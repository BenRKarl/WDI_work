###Week03-Day03

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w03_d03_submission`

---
# MORNING EXERCISE

###Squares (reprise)
####***Key Skills:*** HTTP GET requests, CSS

Build a sinatra app. It should have the following specifications:

* A GET request to '/' should show one blue square.
* A GET request to '/:num_squares' should show `:num` many squares.
* You must use a layout.
* You must use a stylesheet in a public folder.
* ***challenge***: Make every third square a circle.



###Kittens
####***Key Skills:*** HTTP GET requests, Placekitten API.

Given that this markup will produce an image of a kitten:

```html	

<img src="http://placekitten.com/<a random width>/<a random height>">

```


Create a Sinatra app with the following specifications:

- A GET request to '/:num_kittens' should show that number of kitten images.
- Their height and width attributes should be random.

---


# Domain Modeling

For each of the following, read the domain, then model it into a problem with entities and relationships. Draw an ERD diagram. From your ERD diagram, design a database schema. For each one, create the SQL file you would use to create the tables.

###Travel Log
You are building an app to help you keep track of our travels. Allows you to write journal entries in various places along your way. Example of a place is Chicago, USA or Paris, France or Timbuktu, Mali. Each place has it's own section in your journal and you can go back and review all of your entries for a particular place after your trip.

###Photo Management App
A professional photographer needs a web app to help manage sharing the photographs that she takes with her clients. She often takes wedding photos, but also does couples and family photos. She keeps photos in an album for each event and shares those with her clients.

###Grocery Store 
A grocer is attempting to keep an inventory of her comestibles and libations.  She wishes to organize her inventory by cuisine type.  She, at present, beleives that each food item will belong to a single food type.  Can we imagine any foods that would violate this rule?  If so, how might we adjust our database schema to accomodate a more flexible categorization system?  ***Hint:*** We haven't yet learned how to do this.  But will soon... 

---

# One-to-many drills
***note*** 
##Phase 1: Data modeling and representation
1. Conceive of a plausible One-to-Many relationship.
*  Write the necessary SQL to create this relationship at that database level. 
*  Create this schema.

##Phase 2: Mutate that database. 
Migrations are changes in schema, that is, in the abstract representation of your data structure.  Mutations are changes in data (i.e. I've created a dog by calling Dog.create or I've changed an attribute of dog).  
1.  Write the necessary code to connect to your database.  
2.  In the same file, write your models (don't worry about putting them in seperate folders)
3.  In the same file, create several instances of your models and associate them. 

##Phase 3: Write RESTful routes for the management of your resrouces. 
1.  In a file `routes.txt` write the full set of RESTFUL routes for your resources.  You should assume that the "many" resource in your one-to-many relationship (i.e. photos in a relationship between albums and photos) can not exist outside the context of a mother resource(i.e. albums in the aforementioned example).
2. **You are not writing a sintara app.  You are demonstrating understanding of RESTful routing principles. **

#BONUS: BUILD THE APP   :)

---









