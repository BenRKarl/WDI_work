###Week01-Day04

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w01_d04_submission`

---

# Morning Exercise
### ***Prime Number***
######***Key Skills:*** Looping, Conditionals
- In a file `prime.rb`,  write a method `prime?` that takes an integer as its only argument.  
- It should return `true` if the number is prime 
- It should return `false` if the number is not prime.

### ***Taking it to Eleven***
######***Key Skills:*** Control Flow, Conditionals

- In a file `eleven.rb`
- Prompt the user for: 
	- The volume of their amplifier volume
	- Whether or not that want to push it over the cliff

- Then handle some conditional logic: 
	- If volume is less than 11 and they have a desire to push it over the cliff, print a message: "Crank it to eleven"
	- If volume is less than 11 and they don't want to push it over the cliff, insult their feeble propensity for rock: "That's not very rock, man."
	- If volume is greater than or equal to 11, tell them to crank it one level higher.

---

#***Rental Application***

###Learning Objective: 

- ...use multiple files in a program to organize code
- write custom classes. 

###Overview:
* Owners of buildings can rent apartments to potential tenants
* You are building the app
* This is a multi-file project that has a main file for working with the objects, and each class as separate files.  

###Spec:

|Building - attribute|type|
|:----------|:-----------|
|address|string|
|style|string|
|has_doorman|boolean|
|is_walkup|boolean|
|num_floors|integer|
|apartments|array of apartment objects|

|Apartment - attribute|type|
|:----------|:-----------|
|price|decimal|
|is_occupied|boolean|
|sqft|integer|
|num_beds|integer|
|num_baths|integer|
|renters|array of person objects|

|Person (assume tenants or prospective tenants)|type|
|:----------|:-----------|
|name|string|
|age|integer|
|gender|string|
|apartment|apartment object|

* Write attr_accessors for each object
* Write initialize methods for each object
* Write to_s methods for each object
* In a main.rb file, demonstrate the functionality of your classes.  

	

