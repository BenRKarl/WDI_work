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

