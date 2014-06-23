
###Download Them
- https://www.dropbox.com/sh/fw6acwf5bwlao60/AADNw74Od9rsrfqp101JnCZQa

###Move Them!
- Place the two files your ~/code/wdi/ director (i.e. NOT the class repository.)

###Unzip Them!

```bash

tar -xjf big_table.tbz2

```

###Create a `gutenburg` database

```bash

psql
CREATE DATABASE gutenburg;
\q

```

###Load in the sql dump data

```bash

psql gutenburg < big_table.sql

```

#THIS MAY TAKE A LONG TIME
###Does not matter here: `ERROR:  role "aldric" does not exist`

