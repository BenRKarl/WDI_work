WEEK 10 DAY 02
#WORK IN YOUR OWN FOLDER ONLY!
#Your pull-request title must start with `w10_d02_submission`
---
####Part 1

In ***Ruby***, write a method `find_substring` that takes a `string` and a `substring` as its arguments.  If the substring is contained within the string, the method should return an index corresponding to the position of the substring inside of the string.  Otherwise, it should return false. For example:
```ruby

find_substring("groovy", "oo")
=> 2

find_substring("far out", "ar")
=> 1

find_substring("purple pie pete", "pumpkin")
=> false


```

##You are not allowed to use any methods bearing the word 'index'

####Part 2

In ***JavaScript***, write the same method.

---

###Bookbone

##Customer:
- "You know those street side book selling people?  That' me! :)  I want a way to manage what books are on my table.  The end goal is a display of authors and books.  I choose different books everyday for the table... so... nothing needs to be persisted!  I'll just enter the authors and books each day.  ... At first... just let me enter author names.  I want to see the authors on the screen after entering a name."

###Stage 1
- Build a backbone application scaffold from scratch
  - Be reminded of load order
  - What is a hard dependency?  How does this affect buiding your scaffold?

###Stage 2
- Author
  - Model
    - `new Author({name: 'Lichard'})`
  - Collection
  - Model View
    - use a template on index.html
  - List View


```javascript

var lichard = new Author({name: 'Lichard DeGray'});
var lichardView = new AuthorView({model: lichard});
lichardView.render().el;

// This produces a HTML node with the authors name
```

```javascript

var authorCollection = new AuthorCollection();
authorCollection.add({name: 'Lichard DeGray'});
authorCollection.add({name: 'Kathew Bod'});
var authorListView = new AuthorListView({collection: authorCollection});
authorListView.render().el;

// This produces a HTML ul node with author names listed
```


###Stage 3
- A form allows for new authors to be created
- When new author is created, the view updates

###Stage 4
- Book
  - Model
    - `new Book({title: 'The Great Book'})`
  - Collection
  - Model View
    - use a template on index.html
  - List View

###Stage 5
- Give authors an attributes of books
- books is a book collection
- Update the author view to display all the books of that author

---


#Juice App

Using Andrews Authors and Books example from class today, upgrade your Juice app.

# Major development goals:
  - Create a juice from user text input
  - Add ingredients to a juice from user text input

---
