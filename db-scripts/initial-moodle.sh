#!/bin/bash
mysql -u$1 -p$2 $3 < initial-moodle.sql;
mysql -u$1 -p$2 < initialise-docker-db.sql   
