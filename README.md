Note: This is in early stages of development and probably very buggy.
This creates two docker containers for master and slave databases with pharmacy_keeper, hl7 and audit_trail databases.
Master - localhost:6605
  Username: root
  Password: password
Slave - localhost:6606
  Username: root
  Password: password

This is for local development only. Please do not run this script to deploy to a production environment.

Prerequisites:
- Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
- Install and run mysql
brew install mysql@5.7
brew link mysql@5.7
brew services start mysql@5.7
- Install Docker and Docker Compose
brew install docker docker-compose

Installation:
run ./build.sh
