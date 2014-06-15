WEEK 08 DAY 03
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w08_d03_submission`
---
# Underscore.js: Gotta Catch 'Em All!

### Overview

Tired of writing for loops and wish you had all the awesome semantic enumerators that we had in Ruby? You can with [underscore.js!](http://underscorejs.org/)

The goal of this morning's exercise is to get an introduction to a helpful library. Underscore.js also happens to be a dependency for Backbone.js, so we wanted to give you guys an opportunity to play with it first.

Your job is to fill in each of the functions stubbed out in the `pokemon.js` file so that they work. I've written Jasmine Tests for each of them besides "printAllPokemonNamesToConsole", which you will just have to check manually. For the others, go through the underscore.js docs and write the code that makes the tests pass.

#### Notes
* I've namespaced all of the functions to `pokemon`
* I've put the JSON of the pokemon data in the `src/data.js` file.
* You shouldn't have to use any "for" loops.

### Bonus 1

* Add an event listener to the "Gotta Catch 'Em All!" button so that when you click on it, it creates a div with the class "pokeball" for each Pokemon Type.

* When you click on the div for a particular Pokemon Type, it should display a list of all the Pokemon of that type in that div.

### Bonus 2

* Peruse the underscore.js docs for other interesting / useful functions and figure out how they work.

* When you have some free time, it's also worth checking out the [annotated source code](http://underscorejs.org/docs/underscore.html) to see how the library works under the hood.



---

##Group Rails Single Model C.R.U.D.

---

##Stage 1
- Decide on your TEAM's CRUD application's single model
- Pick your team's:
	- President
	- Captain
	- Leader

---

##Stage 2

###Captain
- Create a new rails application
- `git init`
- Create your controller
- Write all your crud app's empty actions:

####For Example:
```ruby

def index
end

def show
end

def create
end

```

- git add, commit


###Leader
- Create a new github repository
- Add your team members to the repo as collaborators

###President
- Create a Trello board
- Create user stories for your CRUD application
- Share the Trello board with your group members

---

####STAND-UP!

---

##Stage 3

###TEAM - Sync up with Github!
- Get the project on github and on everyone's computer

---

#####***NOTE:  From this point on, you git add, commit, & push EVERYTIME a task is completed, i.e. OFTEN***

---

##Stage 4

###Captain
- Get the project on heroku

###Leader
- Implement `index`, `new`, `create` actions
- Implement the corresponding views

###President
- Implement `show`, `edit`, `update`, `destroy` actions
- Implement the corresponding views

---

####STAND-UP!

---

##Stage 5
- Distribute the following tasks:
	- Refactor the `new` and `edit` page to use a `_form` partial
	- Edit the Readme for the project
	- Get it all working on Heroku
	- Style
