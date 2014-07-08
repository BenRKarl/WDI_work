var knex = require("knex")({
  client: "pg",
  connection: {
    host: "127.0.0.1",
    user: "Dima",
    password: "",
    database: "gutenberg"
  }
});

var bookshelf = require("bookshelf")(knex);
var bodyParser = require("body-parser")
var express = require("express");
var app = express();

app.set("bookshelf", bookshelf);

app.use(bodyParser.json());

app.get("/", function(req, res) {
  var bookshelf = app.get("bookshelf");
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.fetchAll({})
        .then(function(collection) {
          res.send(collection)
        })
});

app.get("/authors/:author_id", function(req, res) {
  var authorId = req.params.authorId
  var bookshelf = app.get("bookshelf");
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.where({id: authorId})
        .fetch()
        .then(function(author) {
          res.send(author)
        });
});

app.get("/books/:book_id", function(req, res) {
  var bookId = req.params.bookId
  var bookshelf = app.get("bookshelf");
  var Book = bookshelf.Model.extend({
    tableName: 'books'
  });
  Book.where({id: bookId})
        .fetch()
        .then(function(book) {
          res.send(book)
        });
});

app.post("/authors", function(req, res) {
  var author = req.body.authorName;
  var bookshelf = app.get("bookshelf");
  var Author = bookshelf.Model.extend({
    tableName: "authors"
  });
  new Author({name: author}).save().then(function(model) {
    res.send(model)
  })

})

var server = app.listen(3000, function() {
  console.log('Listening on port %d', server.address().port);
});

// var firstAuthor = Author.where({id: 15})
// .fetch()
// .then(function(model) {
//   // Logic goes here
//   console.log(model)
// })
