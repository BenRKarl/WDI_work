###Week03-Day02

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w03_d02_submission`

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

###Part 3: To the web 

- Write a basic Sinatra app that handles an`HTTP GET` request to `/sailors`.  
- It should render an `index.erb` that displays all of the submarines sailor objects in an unordered list.

---

