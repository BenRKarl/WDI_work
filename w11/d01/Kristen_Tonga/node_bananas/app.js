var express = require('express');
global.mongoose = require('mongoose');
global.path = require('path');

// connect to db
global.db = mongoose.connect('mongodb://localhost/bananas');
console.log('db', db);

//get app object
var app = express();

//config app
app.use(express.bodyParser());
app.use(express.methodOverride());
app.use(express.static(path.join(__dirname, 'public')));

//routes
var monkeysController = require(path.join(__dirname, 'monkeysController'));
  app.get('/api/monkeys', monkeysController.index);
  app.post('/api/monkeys', monkeysController.create);
  app.put('/api/monkeys/:id', monkeysController.update);
  app.delete('/api/monekys/:id', monkeysController.delete);

app.listen(8000, function(){
  console.log ('app is listemening on port 8000');
});
