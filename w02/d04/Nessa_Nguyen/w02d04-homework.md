###Week02-Day04

##1. Superhero Extending

###Overview:
* Practice with modules, classes, and inheritance

###Spec:
* Define a Human class.  It should have attributes like name, age, gender, etc.
* Define a Superhero module with Superhero methods like fly, shoot_web, etc.
* Instantiate several human classes
* Extend a few of them with Superhero methods

___


##2. File IO Links

- You will find a `links.csv` file in your folder.
- Write a Sinatra application
	- The root directory should show a welcome message
	- An `HTTP GET` request to `/links` should read all the links from `links.csv` and display clickable links to all those pages
	

---



##3. Receipt Generator

- Underneath your personal directory, in a folder titled `receipt_generator`, create a Sinatra appliction:
	- A GET request to '/' should should display a form.  The form should have fields for 'company', 'good/servive provided', and 'cost'
	- A POST request to '/receipts' should write a receipt to a file `receipts.txt`.  After form submission, there user should see a message that indicates a receipt has been printed.  j
	- Here is an example of what the file might look like:


```
- Company Name: Particular Assembly Inc.
- Good/Service Provided: Web-Development Refactoring
- Cost: $1,329.99
- Thank you for your patronage
```

**Back/front-end challenge**:
- A GET request '/receipts' should read from `receipts.txt` and display all receipts in an aesthetic way.

---




