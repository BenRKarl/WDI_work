###Week02-Day04

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w02_d04_submission`

---

# Morning Exercise


###***Emergency WDI Pick me up***
######***Key Skills:*** Sinatra, ERB, Solving Code Challanges


## Prompt
For today's morning exercise, we're going to be creating a site like [Emergency Compliment](http://emergencycompliment.com/), except it will be WDI themed. When a user visits the site, they'll be greeted with a WDI pick me up that will hopefully cheer them up.

Your folder structure should look something like this: 

```bash 


├── Gemfile
├── Gemfile.lock
├── app.rb
└── views
    ├── compliment.erb
    └── layout.erb
    
 ```


## Phase 1
When I visit the root ("/") of your app, it should display a greeting and a randomly chosen compliment. The background color of the app should be random as well.

#### Hints

Here is what my layout.erb file looks like. Notice for the background color, I am taking advantage of the embedded Ruby to pass in the color and make it dynamic. Also, you should __not__ need to link an external stylesheet for this exercise.

```
<!doctype html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <title>PICK ME UP</title>
    <style>
    body {background-color: <%= @color %>; font-family: helvetica; color: white; width: 900px; margin: 0 auto}
    div {font: bold 72px helvetica; margin-top: 50px;}
    </style>
  </head>
  <body>
    <h1>Emergency WDI Pickmeup</h1>
    <%= yield %>
  </body>
</html>
```

Here are the compliments and colors I used. Feel free to substitute your own:

```
compliments = ["Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "Syphilis Rivendell for president",
  "Cardigan mumblecore Etsy, YOLO Marfa kogi art party"
]
colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]
```

Put your greeting & compliment each in a div to take advantage of the styling I wrote.

##Phase 2

A user should be able to add to the list of compliments using a POST. You'll need curl to do this like we did on Monday.

##Phase 3

When I visit "/name" ie "/peter", the greeting should say hello to me. There should still be a random compliment and random background color.

##Phase 4

When I visit "/tea", instead of a random compliment, the app should say "OMG Happy Birthday!!!" instead. For any other name, it should perform as in Phase 3.

##Bonus

If you finish early, implement an "I still feel crappy" button that will link to a new page and greet a randomly selected person from class and give them a compliment.

Here's an array for your convenience:

```
["Nichol","Aby","Tom","Ernie","David","Raleigh","Tea","Paris","Justin","Davis","Julie","Sal","Britt","Maria","Mihran","Ann","Erica","Marco","Brad","McKenneth","Russell","Arun","Kevin","Jeff","PJ","Peter"]
```

###***Send Me a Postcard***
######***Key Skills:*** OOP

- Postcard Object
	- Postcard should have a ship_to_address
	- Postcard should have a message	
	- Postcard should have a to_s method
		- Example: `The message 'Hello world!' is being sent to '41 Union Square W New York, NY 10003'"`
- Mailbox Object 
	- Mailbox should have an array of Postcard objects
	- Mailbox should have an accept_postcard method
		- accept_postcard should take a `postcard` and place that postcard in the Mailbox's array of postcards
	- Mailbox should have a to_s method that includes the number of postcards in the mailbox
		- Example: `The mailbox has 16 postcards`


###***A Random Rectangle***
######***Key Skills:*** Sinatra, ERB, Solving Code Challanges

***SPEC:***

* An `HTTP GET` request to `'/rectangle'` should render a rectangle of a random size and color in the browser.  

*  ***Hint:*** A possible solution lies at the intersection of `inline styling` and `embedded ruby`

* An `HTTP GET` request to `/rectangle/:num` should render a user specified number of random rectangles on the page.    

---

#Stock App

- Build a Sinatra App that will take a stock symbol and display data about the stock
- The stock symbol should be inputted via a form
- The result should be rendered in the browswer with ERB.


###Suggested Approach 

- Build a Sinatra application 
	- Include:
		- app.rb		
		- Gemfile
		- views/layout.erb
		- views/index.erb	
		- public/styles.css
- Set up a welcome page
	- Display "Welcome to WDI Stocks" when there is `GET` request to `/`
- Define a method that makes a request to the `YahooFinance` api via the `YahooFinance` gem.
	- This method should take, as paramater, a stock ticker
	- This method should return data about the stock
	- Test this method manually in pry
- Display, for example, google's stock price when there is `GET` request to `/stocks/goog`
	- The file should be `show.erb`
- Modifying what you have created already, display a form when there is `GET` request to `/`
	- The form should allow a user to enter a stock ticker
	- On submit, the form should `post` to `/stocks`
	- Given an input `ticker`, Sinatra should then redirect to `/stocks/:ticker`
- Style!

####***Example api usage:***

```ruby 

data = YahooFinance.historical_quotes("goog", Time::now-(24*60*60*10), Time::now)
```






