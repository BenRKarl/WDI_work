var knex = require('knex')({
  client: 'pg',
  connection: {
    host: '127.0.0.1',
    user: 'wake',
    password: '',
    database:'gutenberg'
  }
});

var bookshelf = require('bookshelf')(knex);

var bodyParser = require('body-parser');
var express = require('express');
var app = express();

app.use(bodyParser.json());
app.set('bookshelf', bookshelf);

app.get('/', function(req,res){
  var bookshelf = app.get('bookshelf');
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.fetchAll({}).then(function(collection){
    res.send(collection);
  });
});

app.get('/authors/:id', function(req,res){
  var bookshelf = app.get('bookshelf');
  var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  Author.where({id: req.params.id}).fetch().then(function(model){
    res.send(model);
  });
});


app.get('/books/:id', function(req,res){
  var bookshelf = app.get('bookshelf');
  var Book = bookshelf.Model.extend({
    tableName: 'books'
  });
  Book.where({id: req.params.id}).fetch().then(function(model){
    res.send(model);
  });
});

app.post('/authors',function(req, res){
  var bookshelf = app.get('bookshelf');
    var Author = bookshelf.Model.extend({
    tableName: 'authors'
  });
  new Author = bookshelf.Model.extend({name: req.body.authorName});
  Author.save().then(function(model){
    res.send(model);
  });

});

app.post('/test', function(req,res){
  console.log(req);
})

var server = app.listen(3000, function(){
  console.log("listening ton port %d", server.address().port);
})

// Author = bookshelf.Model.extend({
//   tableName: 'authors'
// });

// var firstAuthor = Author.where({id:15}).fetch().then(
//   function(model) {
//     console.log(model);
//   })