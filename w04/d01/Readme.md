#WEEK 04 DAY 01
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w04_d01_submission`

___

#Morning Exercise

###Migrations

1.  Write a migration to create a `dishes` table, with columns for:
	- type of `cuisine`
	- `prep_time` in minutes
	- `cost`
	- `celebrity_chef_id`

2.  Write a migration to create a `celebrity_chefs` table, with columns for:
	- `name`
	- `age`
	- `bleached_goatee`, a boolean

3.  Your product manager has decided your application is agnostic with respect to the creators of your dishes.  Write a migration to drop your `celebrity_chefs` table.
4.  Write a migration to drop the `celebrity_chef_id` from your `dishes` table.

5. Write a migration to add a column to your `dishes` table:
	- `gluten`, a boolean, which should default to `true`

6. Run your migrations.  Send the resultant terminal output to me in HipChat.


---

#WDInstagram
This is just going to be a little bit of practice making a single model Rails CRUD app.  

###Entry Model

|column|type|
|-----|-----|
|author|string|
|photo_url|string|
|date_taken|date|

You will need to look up how to work with the ActiveRecord `date` datatype.

###Routes & Behaviors

|HTTP Verb|URL| Controller#Action | Behavior |
|-----|-----|-----|-----|
|GET|/entries|entries#index|Shows all entries|
|GET|/entries/new|entries#new|Displays a form for the creation of a new Entry resource|
|POST|/entries|entries#create|Creates a new entry and saves it to the database.|
|GET|/entries/:id|entries#show|Displays a particularly entry.



### Instructions

1. Create a new rails app called wdinstagram_app `rails new wdinstagram_app -d postgresql`
* Create a migration file that will help you create your entries table
* Run `rake db:migrate` to actually create that table
* Create your entry model 
* Create routes for your app using resources (make sure there are only routes for the actions that we need!  You may need to look this one up.)
* Create a controller with the required controller actions (listed above)
* Define the method for a controller action, then create any corresponding views for that action.
* Move on to the next controller action until you are done.




### Bonus


1. Add validation: name and photo_url need to be present.  Google 'ActiveRecord validations' for a hint on how to make this happen.

2. Add a column for `caption` to your Entry, which is a text description of the shot. You'll need to generate a database migration for this and then update the rest of your app to be able to display these captions.

---

#Planets have many moons.
We are going to build a CRUD app with more than one model.  In this case, we will have two models: planets and moons existing in a one to many relationship(a planet has many moons, a moon belongs to a planet). 

###Planet model

| column | datatype | 
|-----|-----|
| name|string|
| image_url| string |
| diameter | integer |
| mass|integer |
| life|boolean|


###Moon model
|column|datatype|
|-----|-----|
|name|string|
|planet_id|integer|


###Routes and Behaviors
|HTTP Verb|URL|Controller#Action|Behavior|
|-----|-----|-----|-----|
|GET|/planets|planets#index|display a list of all planets|
|GET|/planets/new| planets#new | return an HTML form for creating a new planet|
|POST|/planets| planets#create | create a new planet |
|GET |/planets/:id| planets#show | display a specific planet |
|GET |/planets/:id/edit| planets#edit | return an HTML form for editing a planet|
|PATCH/PUT |/planets/:id | planets#update | updates a specific planet |
|DELETE|/planets/:id| planets#destroy | delete a specific planet |
|GET|/planets/:planet_id/moons/new|moons#new|Renders a form for the creation of a new moon resource|
|POST|/planets/:planet_id/moons|moons#create|Creates a new moon, associated with a planet.|
|GET  |/planets/:planet_id/moons/:id|moons#show|Renders a show page for a specific moon.|
|GET|/planets/:planet_id/moons/:id/edit|moons#edit|Renders a form to edit an existing moon resrouce|
|PATCH/PUT|/planets/:planet_id/moons/:id|moons#update|Update a specific moon that belongs to a specific planet|
|DELETE|/planets/:planet_id/moons/:id|moons#destroy|Delete a specific moon that belongs to a specific planet|

This code will write the necessary routes for you.

```ruby 

resources :planets do 
    resources :moon, except: [:show, :index]
end

```

###Instructions
1. Create a new project planets_moons
* Write the migrations to set up your schema
* Run `rake db:migrate` to actually create that schema
* Create your Moon model 
* Create routes for your app using resources. 
* Create the necessary controllers for the defined actions. 
* Define the method for a controller action, then create any corresponding views for that action.
* Move on to the next controller action until you are done.
___






