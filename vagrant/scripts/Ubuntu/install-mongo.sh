#!/bin/bash

# https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-ubuntu/

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

apt-get update

apt-get install -y mongodb-org

# apt-get install -y mongodb-org=6.0.1 mongodb-org-database=6.0.1 mongodb-org-server=6.0.1 mongodb-mongosh=6.0.1 mongodb-org-mongos=6.0.1 mongodb-org-tools=6.0.1

systemctl start mongod
systemctl enable mongod

