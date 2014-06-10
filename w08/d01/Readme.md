WEEK 08 DAY 01
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w08_d01_submission`
---
#Morning exercise

- Write an Active Record query to get all Aces
```ruby
	Card.where(name: "ace")
```
- Write an Active Record query to get all Spades
```ruby
	Card.where(suit: "spades")
```
- Write an Active Record quert to return all Jacks
```ruby
	Card.where(name: "jack")
```
- Write an Active Record query to get all Hearts
```ruby
	Card.where(suit: "hearts")
```
- Write an Active Record query that orders all cards by name'
```ruby
 Card.order(:name)
```

- Write a method that produces a random flush (i.e. 5 cards of the same suit)

```ruby
def flush
	suit = ["hearts", "diamonds", "clubs", "spades"].sample
	Card.where(suit: suit).sample(5)
end
```


##Bonus
- Write an Active Record query to find all Jacks and Queens
```ruby
	Card.where('suit = ? OR suit = ?', "jack", "queen")
```
- Write an Active Record query to find all cards between 3 and 7 inclusive.
```ruby
	Card.where(name: "3".."7")
```

---

# PER WAKE'S SUGGESTION

- Write a method that produces a random straight (i.e 5 cards in consecutive order)

---

#Start Omniauth With Facebook
- This application is ONLY to practice some steps to integrate Facebook

###Facebook Config
- Create a developer account on facebook:
	- `https://developers.facebook.com/`
- Click Under `Apps`
	- `Create a New App`
- After creating the Application
	- Under `Settings`
	- Click `Advanced`
	- Under: "Valid OAuth redirect URIs"
	- Enter: `http://localhost:3000/` and `http://0.0.0.0:3000/`
	- Save your settings

###Keys:
- Place your App ID & App Secret in your ~/.bash_profile
	- `export FACEBOOK_ID=your_app_id_goes_here`
	- `export FACEBOOK_SECRET=your_secret_goes_here`
- Open up new terminal tabs, so this info is loaded


###New Appication
- Create a new rails application
- Set up the database

###Gemfile
- include these gems:
	- `gem 'omniauth'`
	- `gem 'omniauth-facebook'`

###Omniauth config
- Create this file: `config/initializers/onmiauth.rb`
- Place this in that file:

```ruby

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_ID'], ENV['FACEBOOK_SECRET']
end

```

###Temporary Display of Success
- Create a sessions controller
- Create this route:  `get '/auth/:provider/callback', to: 'sessions#log'`
- Here is a `log` action ONLY to demo if the connection was successul:

```ruby

 def log
   data = request.env['omniauth.auth']
   render :json => data.to_json
 end

```


###Did it work?
- Start the server
- Visit `http://0.0.0.0:3000/auth/facebook`

###Further reading

- Take a look at `Instructors/oauth.md` for additional resources an OAuth.  Let's concentrate on having some measure of high level comprehension here.

---

# Tick Tock

A JavaScript & jQuery challenge. A lot of you mentioned needing more practice with setInterval.

### To Do

* Rotate the second hand every second so that it does a full rotation in 1 minute
* Rotate the minute hand so that it does a full rotation in 1 hour
* Rotate the hour hand so that it does a full rotation in 12 hours

### Stuff you will need to look up:

* JavaScript setInterval
* The CSS transform `rotate`

### Bonuses:
* Use the JavaScript Date Object to initialize your clock to the current time
* [Check out different easings for your animation so it doesn't look so jerky](http://easings.net/)
* Refactor the clock hands so they are pure CSS instead of images
* Use CSS @keyframes for your animation instead of using JavaScript's setInterval
* Play with other CSS transforms besides `rotate`
