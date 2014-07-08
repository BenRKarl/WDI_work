var knex = require ('knex')({
  client: 'pg',
  connection: {
    host: '127.0.0.1',
    user: 'thannes',
    password: '',
    database: 'gutenberg'
  }
});

var bookshelf = require('bookshelf')(knex);
var bodyParser = require('body-parser')
var express = require('express')
var app = express();
app.set('bookshelf', bookshelf);

app.use(bodyParser.json());

app.get('/', function(req, res){
  var bookshelf = app.get('bookshelf');
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.fetchAll({}).then(function(collection){
    res.send(collection);
  });
});


app.get('/books/:id', function(req, res){
  var bookId = req.params.id;
  var bookshelf = app.get('bookshelf');
  var Book = bookshelf.Model.extend({
    tableName: 'books'
  });
  Book.where({id: bookId}).fetch().then(function(model){
    res.send(model);
  });
});

app.get('/authors/:id', function(req, res){
  var authorId = req.params.id;
  var bookshelf = app.get('bookshelf');
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.where({id: authorId}).fetch().then(function(model){
    res.send(model);
  });
});

app.post('/test', function(req, res) {
  var bookshelf = app.get('bookshelf');
  var Author = bookshelf.Model.extend({
    tableName:'authors'
  });
  //add author to the table and return author object with id
  new Author({name})
});

var server = app.listen(3000, function(){
  console.log('App is listening on port %d', server.address().port);
});

// var firstAuthor = Author.where({id: 15}).fetch().then(
//   function(model){
//   console.log(model);
// });
