--- NOTES

CREATE DATABASE photos

\c photos

CREATE TABLE albums
(
  id serial4 PRIMARY KEY,
  job_type varchar(255)
);

CREATE TABLE job_type;
(
  id serial4 PRIMARY KEY,
  event varchar(255),
  date date
  );
