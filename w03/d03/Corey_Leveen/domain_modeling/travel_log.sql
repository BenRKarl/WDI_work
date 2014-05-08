CREATE TABLE users
(
  id serial4 PRIMARY KEY,
  username varchar(255)
);

CREATE TABLE journal_entries
(
  id serial4 PRIMARY KEY,
  place varchar(255),
  user_id integer
);
