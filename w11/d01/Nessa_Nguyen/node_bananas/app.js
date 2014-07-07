var express  = require('express');
var bodyParser = require ('body-parser');
var methodOverride = require ('method-override');

global.path     = require('path');
global.mongoose = require('mongoose');
global.db = mongoose.connect('mongodb://localhost/bananas');
var app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

app.use(methodOverride());
// app.use(express.static(__dirname + '/public'));
app.use(express.static(path.join(__dirname), '/public'));

var monkeysController = require(path.join(__dirname, 'monkeysController'));
app.get('/api/monkeys', monkeysController.index);
app.post('/api/monkeys', monkeysController.create)
app.put('/api/monkeys/:id', monkeysController.update)
app.delete('/api/monkeys/:id', monkeysController.delete)

app.listen(8000, function() {
})
