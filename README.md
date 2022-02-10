*Note: This is in early stages of development and probably very buggy.*
<h1> PK master/slave database replication with Docker </h1>
<h3>This creates two docker containers for master and slave databases with pharmacy_keeper, hl7 and audit_trail databases.</h3>
<b>Master - localhost:6605</b>
<br>&nbsp;&nbsp;&nbsp;Username: root
<br>&nbsp;&nbsp;&nbsp;Password: password
<br>
<br><b>Slave - localhost:6606</b>
<br>&nbsp;&nbsp;&nbsp;Username: root
<br>&nbsp;&nbsp;&nbsp;Password: password
<br>
<br>
:warning: This is for local development only. Please do not run this script to deploy to a production environment.
<h2>Prerequisites: </h2>
1. Install brew
<br>&nbsp;&nbsp;&nbsp;<code>/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"</code>
<br> 2. Install and run mysql
<br> &nbsp;&nbsp;&nbsp; <code>brew install mysql@5.7</code>
<br>&nbsp;&nbsp;&nbsp; <code> brew link mysql@5.7</code>
<br>&nbsp;&nbsp;&nbsp; <code> brew services start mysql@5.7</code>
<br>3.Install Docker and Docker Compose
<br>&nbsp;&nbsp;&nbsp;<code> brew install docker docker-compose</code>
<h2>Installation:</h2>
&nbsp;&nbsp;&nbsp;<code>./build.sh </code>
