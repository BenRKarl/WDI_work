CREATE DATABASE travel_log;

CREATE TABLE travelers (id serial4 PRIMARY KEY, traveler_name varchar(255));

CREATE TABLE entries (id serial4 PRIMARY KEY, entry_date timestamp, location varchar(255), traveler_id integer);