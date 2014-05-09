#WEEK 03 DAY 05
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w03_d05_submission`

---
# MORNING EXERCISE
### FizzBuzz

Write a program that prints the numbers from 1 to 100. But for multiples of 3 print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiple of both 3 and 5, print “FizzBuzz”.

---


###Planets on Rails!

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


###STYLING YOUR APP IS NON-OPTIONAL.

---



