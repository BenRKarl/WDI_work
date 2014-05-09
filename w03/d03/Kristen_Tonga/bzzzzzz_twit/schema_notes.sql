-- Notes for db set up

CREATE DATABASE wdi_bzzz_app;

\c wdi_bzzz_app;

CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE bzzzs
(
  id serial4 PRIMARY KEY,
  message varchar(255),
  user_id integer
);


-- IN PRY!!

my_user = User.create({username: 'Lichard'})
my_bzzz = Bzzz.create({message: 'Choppin Brocoli'})
my_user.bzzz << my_bzzz

-- or
User.create({username: 'Jeremy'}) << Bzzz.create({message: 'A New Hat!!'})
