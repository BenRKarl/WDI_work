###Week03-Day01

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w03_d01_submission`

---

# Morning Exercise

###***[Herkoku Launch](https://devcenter.heroku.com/articles/rack)***

![Launching to heroku](http://science.nationalgeographic.com/staticfiles/NGS/Shared/StaticFiles/Science/Images/Content/first-canaveral-launch-july-1950-first-rocket-ga.jpg)

___


#Heroku Launch (reprise)

* Let's take another pass on launching to Heroku.  
* Follow [this](https://github.com/amadden80/Sinatra_Heroku_Demo) tutorial.  Created by Andrew, it takes us through the process of launching a basic Sinatra App to Heroku.  


---

#PSQL PRACTICE
###In psql terminal, write working examples of each in SQL:
- MIGRATION
	- create a table
	- alter a table's schema by adding a new column
	- alter a table's schema by changing the title of a column
- MUTATION 
	- insert a new record into a tabel
	- update information of a row
	- delete a specific row
- SELECTION
	- obtain all records 
	- obtain a spicific record
	- obtain only the name column of all records

###Save each command in a file title `psqlpractice.sql`

---	 

# Lunchbot

## Set up database.

- Create a folder in your personal folder called `lunch_bot`
- Write a Sinatra Application within that folder
- Create a new database called `wdi_lunch`
- Create a new table called `lunches`
  - Columns should include:
    - lunch_name : string that is required
    - picked_count : integer that defaults to 0 (If you don't know how to specifiy a default, have a look at [this documentation](http://www.postgresql.org/docs/9.1/static/sql-createtable.html)).
    
## Build app logic.  
- A `get` request to `/lunches` should: 
	- display all existing lunches
	- display a `create lunch` button which submits a `GET` request to `/lunches/new`
	- display a `random lunch` button which submits a `GET` request to `/lunches/random` 

- A `GET` request to `/lunches/new` should:
  - display a form with fields for: 
  	- the name of lunch 
  	- the restaurant
  - display a submit button: a `POST` request to `/lunches/create`.  This request should create a new lunch record in the database and redirect to `/lunches`.
- A `GET` request to `/lunches/random` should display a single randomly selected record from the database:
  - When a lunch is selected, it's picked_count should be incremented by 1

##***STYLE YOUR APP :)***

---