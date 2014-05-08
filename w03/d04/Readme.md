#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w03_d04_submission`

---
# MORNING EXERCISE
### Sinatra Does Division. 

* A get request to '/:num' shows all of the numbers from 1 to a 1,000 that are divisible by that number.  


###KITTENS DB.
####***Key Skills:*** Migrating a database.  

# Phase 1: 
* Create a database called `wdi_kittens`. 
* Create a table `kittens` with fields for `width` and `height`

# Phase 2: 
* Configure a Sinatra app with the necessary components to communicate with the database.  (i.e. Models, Database Connection)

# Phase 3: 
* A `GET request` to `/kittens/random` should present the user with an image of a random Kitten and a button that allows them to `save` that kitten to the database.  
* The `save` button, when clicked, should submit a `POST` request to `/kittens` 	

---


###Proto, meet Rails.  

In this exercise, you will be creating a Rails application that handles the following routes and behaviors.  


|HTTP request|Controller#Action| Behavior |
|-----|-----|-----|
|`GET` to `/`|protos#welcome | Displays a welcome message to the class |
|`GET` to `/protos`|protos#index | Retrieves all developers from databse.  Displays a list of all developers in class proto |
|`GET` to `/protos/:id`|protos#show| Retrieves a single developer from database.  Displays that developers name. |

##Phase 1
***Configure your database!*** 

* You will need to edit your `config/database.yml`.  The following code is actually all that is required to connect to the database.
```yml
development:
  adapter: postgresql
  database: <YOUR APP NAME>_development
```

***Create your database!*** 

* Run `rake db:create` in Terminal

***Define your schema***

* Rails has built in generators that allow us to generate code very quickly.  Of use to use for the purpose of defining our schema is Rails' ability to generate migrations. 

* We can set up our protos table with the following command run from the terminal: 

```bash

`rails generate migration create_protos_table `

```

This will generate a file under `db/migrate`.  Make it look like this.

```ruby 

class CreateProtos < ActiveRecord::Migration
  def change
    create_table :protos do |t|
    	t.string :name
    	t.timestamps
    end
  end
end

```
***Run your migration***

* Migrate your database with `rake db:migrate`



##Phase 2

***Create your model***	
* `rails g model Proto`


* Define your routes in `config/routes.rb`.  The above table should help you out here.

***Seed your database***
```ruby
proto = ['Nessa Nguyen','Jeff Winkler','John Murphy','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy']
```

* In `db/seeds.rb`, create Proto instances for each member of the class.  
* You can run this code with the following command: `rake db:seed`

##Phase 3
* For each route, handle the logic that corresponds to the behaviors outlined in the table.  


___









