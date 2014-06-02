#WEEK 07 DAY 01
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w07_d01_submission`
---
###Palindromes

##Part 1

Write a method in Ruby that takes a string as an argument and returns true or false based on whether or not that string is a palindrome:

```ruby

	def palindrome?(string)
		#some logic
	end
```

##Part 2

Write a method in JavaScript that takes a string as an argument and returns true or false based on whether or not that string is a palindrome:

```javascript

	function isPalindrome(string) {
		// some logic
	}
```
**hint:** You may want to take a look at JavaScript's `substring` function.  However, it is not necessary to solve the problem.


***challenge:***

Extend the `String` object's prototype to include an `isPalindrome` method.  We should be able to call it on a string, without passing it any arguments.

```javascript

	"maddam".isPalindrome() //should return true

```

---

# Color Picker

Let's recreate an application, something like [this](https://kuler.adobe.com/explore/random/?time=month) one.  You will find starter files included in your directory.

Leveraging the power of jQuery's `.ajax` function, you will make a request to this url when a button is clicked:

`http://www.colourlovers.com/api/palettes/new?format=json`

This response will be an array of JSON objects, each corresponding to a color palette.  

You will need to define a `success` callback that parses the JSON response and produces / appends the necessary markup to display the color palettes.

---

# If you have not finished Hangman, please continue to work on it.  
***You can find Aldric's videos [here](https://www.youtube.com/playlist?list=PLb_aHcWo1ZgL7d57z7jsshrYQlmZZJ10C).***
