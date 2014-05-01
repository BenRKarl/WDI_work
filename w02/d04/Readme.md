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