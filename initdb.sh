#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER IF NOT EXISTS sonarqube;
    CREATE DATABASE IF NOT EXISTS sonarqube;
    GRANT ALL PRIVILEGES ON DATABASE sonarqube TO sonarqube;
EOSQL