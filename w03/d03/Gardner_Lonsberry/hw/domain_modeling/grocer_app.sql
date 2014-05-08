CREATE DATABASE grocer_app

\c grocer_app

CREATE TABLE grocer
( 
id serial4 PRIMARY KEY,
store_id integer,
name varchar(255),
logoid integer
);

CREATE TABLE comestibles
(
id serial4 PRIMARY KEY,
id integer,
foodtype varchar(200),
expirationdate integer,
description varchar(2000),
price integer,
promotionid varchar(100)
aisleid integer
);

CREATE TABLE comestibles
(
id serial4 PRIMARY KEY,
id integer,
libationtype varchar(200),
expirationdate integer,
description varchar(2000),
price integer,
promotionid varchar(100)
aisleid integer
needrefridgeration varchar(10),
);


CREATE TABLE entry
( 
id serial4 PRIMARY KEY,
location varchar(500),
time-stamp varchar (300),
body varchar(10000),
title varchar (400)
);