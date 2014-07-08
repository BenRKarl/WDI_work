var express = require('express');
global.mongoose = require('mongoose');
global.path = require('path');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');
// var monkey = require('monkey');

// Connect to Database
global.db = mongoose.connect('mongodb://localhost/bananas')

// Get app object
var app = express();

// Config app
app.use(bodyParser()); //To parse data
app.use(methodOverride()); //Allows for using requests other than get and post
// app.use(express.static(__dirname +'/public'));
app.use(express.static(path.join(__dirname, 'public')));

// Routes
var monkeysController = require(path.join(__dirname, 'monkeysController'));
// app.get('/api/monkeys', function() {
//   // Gets all the monkeys and responds with all of the monkeys in JSON
// })

app.get('/api/monkeys', monkeysController.index);

// app.post('api/monkeys', function() {
//   // Creates a new monkey
// })

app.post('/api/monkeys', monkeysController.create);

// app.put('/api/monkeys/:id', function() {
//   // Updates a monkey
// })

app.put('/api/monkeys/:id', monkeysController.update);

// app.delete('/api/monkeys/:id', function() {
//   // Deletes a monkey
// })

app.delete('/api/monkeys/:id', monkeysController.delete);

app.listen(8000, function() {
  console.log('app is listening on port 8000')
})
