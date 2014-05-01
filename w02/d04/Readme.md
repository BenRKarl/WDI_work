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

* An `HTTP GET` request to `'/'` should:

	* display a greeting along with a randomly chosen comppliment.
	* display a random background color.


#### Hints

Write your css in the head of your `layout.erb` file.  You will not need to link to an external stylesheet.

```
<!doctype html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <title>PICK ME UP</title>
    <style>
    div {font: bold 72px helvetica; margin-top: 50px;}
    </style>
  </head>
  <body>
    <h1>Emergency WDI Pickmeup</h1>
    <%= yield %>
  </body>
</html>
```



##Phase 2

* Build a form that submits a name via an `HTTP Post` request to `/names`.
* The block associated with that route should redirect to `"/names?name=#{the_name_from_params}"`
* a GET request to `/names`	 should produced a random pick me up with the submitted name included in the greeting.

---


#Superhero Extending

###Overview:
* Practice with modules, classes, and inheritance

###Spec:
* Define a Human class.  It should have attributes like name, age, gender, etc.
* Define a Superhero module with Superhero methods like fly, shoot_web, etc.
* Instantiate several human classes
* Extend a few of them with Superhero methods

___


#File IO Links

- You will find a `links.csv` file in your folder.
- Write a Sinatra application
	- The root directory should show a welcome message
	- An `HTTP GET` request to `/links` should read all the links from `links.csv` and display clickable links to all those pages
	

---



#Receipt Generator

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

#####***back/front-end challenge***:
- A GET request '/receipts' should read from `receipts.txt` and display all receipts in an aesthetic way.

---




