CREATE DATABASE hospital_db;

\c hospital_db

CREATE TABLE doctors (id serial4 PRIMARY KEY, doctor_name varchar(255));

CREATE TABLE patients (id serial4 PRIMARY KEY, doctor_id integer, patient_name);