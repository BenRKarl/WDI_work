var express = require('express');
var mongoose = require('mongoose');
var path = require('path');


//conect to database

var db = mongoose.connect('mongodb://localhost/bananas');

//get app object
var app = express();

//config app
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(express.static(path.join(__dirname, 'public')));

//routes
var monkeysController = require(path.join(__dirname, 'monkey'))
app.get('/api/monkeys', monkeysController.index);
app.post('/api/monkeys', monkeysController.create);
// app.put('/api/monkeys/:id', monkeysController.update);
app.delete('/api/monkeys/:id', monkeysController.delete);

app.listen(8000, function(){
  console.log('app is listening on port 8000');
})