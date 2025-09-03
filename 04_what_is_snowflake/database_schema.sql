SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS demo_db;
USE DATABASE demo_db;
SHOW SCHEMAS;
CREATE SCHEMA IF NOT EXISTS demo_db.staging;

SHOW SCHEMAS IN DATABASE demo_db;

CREATE TABLE IF NOT EXISTS CUSTOMER (
    customer_id integer,
    age integer,
    email varchar(50)
);

SHOW TABLES;

SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER (customer_id, age, email) 
VALUES
 (1, 25, 'john.doe@example.com'),
 (2, 30, 'jane.smith@example.com');

 SELECT * FROM CUSTOMER;

 SELECT CURRENT_DATABASE(), CURRENT_SCHEMA();

USE DATABASE demo_db;
USE SCHEMA staging;
SHOW TABLES;

SELECT COUNT(*) FROM CUSTOMER;
INSERT INTO CUSTOMER (customer_id, age, email) 
VALUES
 (1, 25, 'john.doe@example.com'),
 (2, 30, 'jane.smith@example.com');
SELECT COUNT(*) FROM CUSTOMER;

SELECT * FROM CUSTOMER;

DROP DATABASE demo_db;
SHOW DATABASES;
