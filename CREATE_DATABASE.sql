CREATE DATABASE my_first_database
WITH TEMPLATE template0;

SELECT datname
FROM pg_database
WHERE datname = 'my_first_database';
