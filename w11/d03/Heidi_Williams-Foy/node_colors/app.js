var express     = require('express');
var path        = require('path');
var bodyParser  = require('body-parser');

var app = express();
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

var colors = ["red", "yellow", "blue"];

// handle your requests here



app.listen(8000, function(){
  console.log("app is listening on port 8000");
})