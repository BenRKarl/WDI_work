var knex = require('knex')({
  client: 'pg',
  connection: {
    host: '127.0.0.1',
    user: 'benrkarl',
    password: '',
    database: 'gutenberg'
  }
});

var bookshelf = require('bookshelf')(knex);

var bodyParser = require('body-parser');
var express = require('express');
var app = express();

app.use(bodyParser.json());

app.set('bookshelf', bookshelf);


//All authors
app.get('/', function(req, res){
  var bookshelf = app.get('bookshelf');
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.fetchAll({}).then(function(collection){
    res.send(collection);
  });
});

//A specific author
app.get('/authors/:id', function(req, res){
  var bookshelf = app.get('bookshelf');
  var id = req.params.id;
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.where({id: id}).fetch().then(function(author){
    res.send(author);
  });
});

//A specific book
app.get('/books/:id', function(req, res){
  var bookshelf = app.get('bookshelf');
  var id = req.params.id;
  var Book = bookshelf.Model.extend({
    tableName: 'books'
  });
  Book.where({id: id}).fetch().then(function(book){
    res.send(book);
  });
})

app.post('/authors', function(req, res){
  var bookshelf = app.get('bookshelf');
  var newName = req.body.authorName;
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
});
  new Author({name: newName}).save().then(function(model){
    res.send(model);
  });
});

//SERVER LISTENING TO 8000
var server = app.listen(8000, function(){
  console.log("Gutenberg is live on port 8000")
})

// var firstAuthor = Author.where({id: 15}).fetch().then(
//   function(model){
//     console.log(model);
//   })
