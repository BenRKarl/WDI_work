###Bookbone

---

##Prerequisites
- Backbone
  - Model
  - View
  - List View
  - Collection

---

##Learning Objectives:
- Describe:
  - data-binding via listenTo.
- Do:
  - Backbone specific behavior on click
  - Custom behavior on click
  - Render on a data-change
- Tie:
  - ...


---

##Customer:
- "You know those street side book selling people?  That me.  I want a way to manage what books are on my table.  Just a display of authors and books is the end goal.  I choose different books everyday for the table... so... nothing needs to be persisted!  I'll just enter the authors and books each day."

---

##Customer:
- "At first... just let me enter author names.  I wants to see the authors on the screen after entering a name."

---

###Stage 1
- Build a backbone application scaffold from scratch
  - Be reminded of load order
  - What is a hard dependency?  How does this affect buiding your scaffold?

---

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

---

###Stage 3
- A form allows for new authors to be created
- When new author is created, the view updatesAuthor

---

##Customer:
- "Great!  Can I enter books now too?"

---

###Stage 4
- Book
  - Model
    - `new Book({title: 'The Great Book'})`
  - Collection
  - Model View
    - use a template on index.html
  - List View

---

###Stage 5
- Give authors an attributes of books
- books is a book collection
- Update the author view to display all the books of that author

---

##Customer:
- "New Feature!  I want to `free` the books from the list.  Give me a button... which removes a book."

---

###Stage 6
- Include a button to `free` a book
- To `free` a book means both it is removed from the DOM and the collection

---

##Customer:
- "New Feature Request!  Now... instead of just having a button to free books... he/she wants three buttons.  `free` `$1` `$10`  When any of the buttons are hit, a $ income balance display should be updated accordingly."

---

###Stage 7
- Since parts need to interacte now... namespace the entire application

---

###Stage 8
- Implement an Balance model and view
- When a `free` `$1` `$10` button is hit, the balance should be updated and the boom removed.

---
