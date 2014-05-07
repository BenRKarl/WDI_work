CREATE DATABASE croak_app;
\c croak_app

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE croaks
(
  id serial4 PRIMARY KEY,
  message varchar(255),
  user_id integer
);

User.create({username: 'Lichking'})
lich = User.first
lich.croaks << Croak.create({message: 'Wow!'})
User.create({username: 'Baconator'})
frogger = User.create({username: 'Frogger'})
frogger_croak = Croak.create({message: 'ribbit!'})
frogger.croaks << frogger_croak
