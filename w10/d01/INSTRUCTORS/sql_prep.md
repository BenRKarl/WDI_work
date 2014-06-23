##The Gutenburg Prep

---


###Download Them
- https://www.dropbox.com/sh/fw6acwf5bwlao60/AADNw74Od9rsrfqp101JnCZQa

#### *** Takes Some Time ***

###Move Them!
- Place the sql.zip in your `~/code/wdi/` director (i.e. NOT the class repository.)

###Unzip Them!

```bash

cd ~/code/wdi/
unzip sql.zip
tar -xjf three_tables.tbz2
```

#### *** Takes Some Time ***


###Create a `gutenburg` database

```bash

psql
CREATE DATABASE gutenburg;
\q
```

###Load in the sql dump data

```bash

psql gutenburg < three_tables.sql
```

#### *** Takes Some Time ***

---

###These errors do not matter at this time:
- `ERROR:  role does not exist`

---


###Verify Success!

```
psql
\c gutenburg
SELECT count(*) FROM books;

```

##Should be: `132706698`

---

###Thank you
