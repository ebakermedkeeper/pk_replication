#!/bin/bash
echo "Creating Master and Slave DBs for pharmacykeeper. If you run into any errors please contact emily.baker@medkeeper.com"
docker-compose down
rm -rf ./master/data/*
rm -rf ./slave/data/*
docker-compose build
docker-compose up -d

sleep 30
until docker exec pk_master sh -c 'export MYSQL_PWD=password; mysqladmin ping -u root'
do
    echo "Waiting for pk_master database connection..."
    sleep 4
done

echo "Setting up replication on master..."
priv_stmt='GRANT REPLICATION SLAVE ON *.* TO "slave"@"%" IDENTIFIED BY "password"; FLUSH PRIVILEGES;'
docker exec pk_master sh -c "export MYSQL_PWD=password; mysql -u root -e '$priv_stmt'"

echo "Checking Master Status..."
MS_STATUS=`docker exec pk_master sh -c 'export MYSQL_PWD=password; mysql -u root -e "SHOW MASTER STATUS;"'`
CURRENT_LOG=`echo $MS_STATUS | awk '{print $6}'`
CURRENT_POS=`echo $MS_STATUS | awk '{print $7}'`

echo "Starting Slave..."
sleep 5
until docker exec pk_slave sh -c ' export MYSQL_PWD=password;  mysqladmin ping -u root;'
do
    echo "Waiting for pk_slave database connection..."
    sleep 4
done
docker-ip() {
    docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

start_slave_stmt="CHANGE MASTER TO MASTER_HOST='$(docker-ip pk_master)',MASTER_USER='slave',MASTER_PASSWORD='password',MASTER_LOG_FILE='$CURRENT_LOG',MASTER_LOG_POS=$CURRENT_POS; START SLAVE;"
start_slave_cmd='export MYSQL_PWD=password; mysql -u root -e "'
start_slave_cmd+="$start_slave_stmt"
start_slave_cmd+='"'
docker exec pk_slave sh -c "$start_slave_cmd"

#Create PK Databases and populate data
echo "Creating PK Databases and Tables..."
db_create_stmt="CREATE DATABASE IF NOT EXISTS pharmacy_keeper;
CREATE DATABASE IF NOT EXISTS audit_trail;
CREATE DATABASE IF NOT EXISTS hl7;"
docker exec pk_master sh -c "export MYSQL_PWD=password; mysql -u root -e '$db_create_stmt'"
docker exec pk_master sh -c "export MYSQL_PWD=password; mysql -u root pharmacy_keeper < /pharmacy_keeper/pharmacy_keeper_pristine_dump.sql"
docker exec pk_master sh -c "export MYSQL_PWD=password; mysql -u root hl7 < /pharmacy_keeper/hl7_pristine_dump.sql"
docker exec pk_master sh -c "export MYSQL_PWD=password; mysql -u root audit_trail < /pharmacy_keeper/audit_trail_pristine_dump.sql"

#Verify slave is working
docker exec pk_slave sh -c "export MYSQL_PWD=password; mysql -u root -e 'SHOW SLAVE STATUS \G'"
