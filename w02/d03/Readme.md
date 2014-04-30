###Week02-Day03

#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w02_d03_submission`

---

# Morning Exercise

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

example api usage:

```ruby 

data = YahooFinance.historical_quotes("goog", Time::now-(24*60*60*10), Time::now)
```






