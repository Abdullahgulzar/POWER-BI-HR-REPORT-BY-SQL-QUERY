CREATE DATABASE POWERBI_PROJECT;

USE POWERBI_PROJECT;

SELECT * FROM `Human Resources` LIMIT 0, 1000;

ALTER table `Human Resources`
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;


DESCRIBE `Human Resources`;

SELECT birthdate FROM `Human Resources`;

SET sql_safe_updates=0;

UPDATE `Human Resources` 
SET birthdate =CASE
    WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;
ALTER table `Human Resources`
MODIFY COLUMN birthdate DATE;

SELECT first_name FROM `Human Resources`
WHERE department = 'Engineering'
LIMIT 0, 1000;