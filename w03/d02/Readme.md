###Week02-Day05

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w02_d05_submission`

---

# Morning Exercise


###***We all live in a yellow submarine***
######***Key Skills:*** Class Definitions

###Part 1

- Write a Sailor class: 	
	- Initialize takes a `name` parameter

- Write a submarine class: 
	- Initialize takes a `color` parameter that should default to yellow. 
	- It should store an array of sailors
	- It should have an `accept_sailor` method that takes a sailor object and appends it to the existing array of sailors.
	- It should have a `torpedo_sailor` method that selects a random sailor for a torpedo ride (back to the shore for a Rock n' Roll concert).

###Part 2: All aboard 

```ruby 

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]
```

- Create sailor objects from the above array. 
- Create a submarine
- Get your sailor objects into the submarine using the `accept_sailor` method. 



---

###***Proto Sinatra Reloaded***
######***Key Skills:*** Class Definitions, View Iteration

###Part 1
- Make a hash of names
 - The key should be their initials as a symbol
	- :mm for Matt Marcello
- The value should be another hash:
	 - {:first_name => "Matt", :last_name => "Marcello"}

- ALL of these names should be in your hash:

```ruby 

proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy'
]
```

###Part 1
- Create a Developer class with the attributes name, initials, and tagline (generated with faker.)
- Give the class a to_s method
- Create instances of the class for each member of the...class.  Be sure to store all instances in a single array.  

###Part 2
- Using Sinatra and erb, write the absolute minimum amount of code we can use to display our array of people objects to a table, with each of their attributes.  If you are unfamiliar with how to create a table in HTML, Read the Friendly Manual (RTFM).

***challenge:*** Sort the developers alphabetically by last name.


---

