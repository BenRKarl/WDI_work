var express     = require('express');
var path        = require('path');
var bodyParser  = require('body-parser');

var app = express();
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true }));

var colors = ["red", "yellow", "blue"];

app.post('/', function(req, res){
  var newColor = req.body.color;
  colors.push(newColor);
  res.send(colors);
})

app.get('/colors', function(req, res){
  res.send(colors);
});

app.listen(8000, function(){
  console.log("app is listening on port 8000");
})
