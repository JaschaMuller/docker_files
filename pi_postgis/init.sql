CREATE USER eoed WITH PASSWORD 'userEOEDs2';
CREATE DATABASE eoed_webapp;
GRANT ALL PRIVILEGES ON DATABASE eoed_webapp TO eoed;
/*ALTER DATABASE eoed_webapp SET 'search_path' = public,shared_extension;*/
/*eoed_webapp #= CREATE EXTENSION IF NOT EXISTS POSTGIS;
eoed_webapp #= CREATE EXTENSION IF NOT EXISTS POSTGIS_TOPOLOGY;*/