#WEEK 03 DAY 05
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w03_d05_submission`

---
# MORNING EXERCISE
### FizzBuzz

Write a program that prints the numbers from 1 to 100. But for multiples of 3 print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiple of both 3 and 5, print “FizzBuzz”.

---

# Schema Scheming.

In a Rails app titled `schema_scheming`, set up the schema and models for the following entities and relationships. 

## Celebrity has many Selfies has many Comments

###Celebrity 
| column | datatype |
|-----|-----|
|name| string |
|age | integer |
|claim_to_fame | string |
|substance_abuse | boolean |

###Selfie
|column | datatype |
|-----|-----|
|num_likes | integer | 
|location | string |
|celebrity_id | integer |


###Comments 
|column | datatype |
|-----|-----|
|content | string |
|selfie_id | integer |


###***Basic Workflow***
* Create your database
* Generate your models and migrations
* Run your migrations


#Squares on Rails

Create a Rails App that implements full CRUD functionality for a single model:

### SQUARE MODEL
| column | datatype |
|-----|-----|
|side_length| integer |
|border_radius| integer|
|color | string |



### ROUTES / CONTROLLER ACTIONS / BEHAVIORS

| HTTP Verb | Path | Controller#Action | Behavior |
|-----|-----|-----|-----|
|GET|/squares|squares#index|display a list of all squares|
|GET|/squares/new| squares#new | return an HTML form for creating a new square|
|POST|/squares| squares#create | create a new square |
|GET |/squares/:id| squares#show | display a specific square |
|GET |/squares/:id/edit| squares#edit | return an HTML form for editing a square|
|PUT |/squares/:id | squares#update | updates a specific square |
|DELETE|/squares/:id| squares#destroy | delete a specific square |

A `square` resource should be represented in HTML as a div with height and width, border-radius, and background-color equal to the square's side_length, border_radius, and color attributes, respectively.



#Planets on Rails!

Create a Rails app that implements full CRUD functionality for a single model: 

###PLANET MODEL

| column | datatype | 
|-----|-----|
| name|string|
| image_url| string |
| diameter | integer |
| mass|integer |
| life|boolean|


### ROUTES / CONTROLLER ACTIONS / BEHAVIORS

| HTTP Verb | Path | Controller#Action | Behavior |
|-----|-----|-----|-----|
|GET|/planets|planets#index|display a list of all planets|
|GET|/planets/new| planets#new | return an HTML form for creating a new planet|
|POST|/planets| planets#create | create a new planet |
|GET |/planets/:id| planets#show | display a specific planet |
|GET |/planets/:id/edit| planets#edit | return an HTML form for editing a planet|
|PUT |/planets/:id | planets#update | updates a specific planet |
|DELETE|/planets/:id| planets#destroy | delete a specific planet |



###HOLD THE PHONE
Rails assumes the singular of "selfies" is "selfy"!  This will not do.  Put the following line of code in `config/initializers/inflections.rb`

```ruby 

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'selfie', 'selfies'
end

```


###STYLING YOUR APP IS NON-OPTIONAL.

---



