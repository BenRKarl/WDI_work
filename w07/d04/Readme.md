#WEEK 07 DAY 04
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w07_d04_submission`
---
#JavaScript CizzUrp

***Spec:***

####Part 1
* Create a `BoyPopStar` constructor in Javascript.
* It should take in a `name` and `haircut` when the constructor function is called and set those attributes on the generated object.
* The constructor should also have a `learnMoves` function that accepts a new dance move and stores it in an array assigned to the objects `moves` attribute.


####Part 2
* Write a `cizzurp` function that takes an argument `n`
* It should iterates through all numbers from 1 to n, printing one of the following strings:
	* If the number is evenly divisible by 3, it should print `cizz`.
	* If the number is evenly divisibly by 5, it should print `urp`.
	* If the number is evenly divisibly by 3 and 5, it should print `cizzurp`.
	* Otherwise, it should just print the number.
* Assign the cizzurp function to the object's prototype.

---

#CRUD VIEW
- Update your personal CRUD application to make use of a View (as seen in class).
- Your Javascript should include a `model`, `collection`, and `view`

###bonus:
- implement the `create` function shown in class

---

#The Infinite Void
In your folder you will find a rails project.  It contains a `seeds.rb` file which scrapes a website of existential philosophy quotes and creates quote objects.  Each quote object has both `text` and `attribution` attributes.  Do not worry too much about this, simply run it with `rake db:seed`.  Then:

1)  Configure your application to respond with JSON as we did in class today with the colors example.  You should only need to work inside of a single controller action.

2)  Build a framework for managing your data on the client side.  This will include a:
	- QuoteModel
	- QuoteView
	- QuoteCollection

3) Implement infinite scroll

Refer to today's in class example for more specific implementation details.  You are essentially recreating the app with a differnt set of data.

***challenge:*** Can you take advantage of jQuery's animation functions to fade in new quotes?

***challenge:*** Can you make the scrolling truly infinite? (i.e. we go the beginning of the collection once the last quote is rendered on the page)

***super challenge:*** Can you seed your database with data from another API?  Or use Nokogiri to scrape a website for quote data?
