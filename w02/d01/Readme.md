###Week02-Day01

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w02_d01_submission`

---

# Morning Exercise
### ***Hard of Hearing Grandma***
######***Key Skills:*** Objects, TDD
* Make the tests pass 

___

#Sinatra Games

###Specification:

- GET `/`
  - Display a link to each of the games below
- GET `/toss`
  - "Heads"
- GET `/dice_roll`
    - 4
- GET `/magic8ball/will%20it%20snow%20tomorrow`
  - "Will it snow tomorrow? Better not tell you now"
- GET `/rps/rock`
  - "The computer chose scissors. You win!"
- GET `/rps/scissors`
  - "The computer chose rock. You lose!"

###Magic 8 Ball Responses


["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
    "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
    "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
    "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
    "Don't count on it", "My reply is no", "My sources say no",
    "Outlook not so good", "Very doubtful"]

___

#Calculator App
- Build a Sinatra App that performs all the basic calculator operations
- The result should be displayed in the browser
- Examples of use:
	- Request: `http://localhost:4567/add/3/5`
		- Response (displayed): `8`
	- Request: `http://localhost:4567/subtract/10/6`
		- Response (displayed): `4`
	- Request: `http://localhost:4567/multiply/11/6`
		- Response (displayed): `66`
	- Request: `http://localhost:4567/divide/12/6`
		- Response (displayed): `2`

#####***Back-End Challenge***
- Add functionality to calculate square roots and powers.

---
#Pair Programming Bot

####Objectives:

- Practice routing, passing parameters, and ERB Templates

#### Prompt

- You are going to recreate your own version of the [pair programming bot](http://frozen-garden-6647.herokuapp.com/) from scratch using Sinatra. The web app should follow a flowchart. Each page will either have a Yes/No option or Done option which links to another page.  

- Your program should mimic the HTML of the web site, but don't worry about styling it using CSS).

***Front-end Bonus challenge:*** Style it using CSS!  You will need to Google how to include stylesheets in a Sinatra application.  Happy hunting.

#### Planning

- Map out your program first. ie BEFORE you start coding. It will be helpful to draw a flow chart.

- You should use ERB templates to keep your code DRY. What types of pages will you need a template for?

- For each of the templates that you are going to use, what information do you need to pass in using an instance variable?

- How many / which pages do you need? What template type is each page going to be?
