var express     = require('express');
var path        = require('path');
var bodyParser  = require('body-parser');

var app = express();
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

var colors = ["red", "yellow", "blue"];

// handle your requests here
app.get('/colors', function(req, res){
  var randomColor = colors[Math.floor(Math.random() * (colors.length))];
  console.log('hitting colors');
  console.log("random", randomColor);
  res.send({color: randomColor});
});

app.post('/colors', function(req, res){
  console.log('you requested: ' + req.body.color);
  colors.push(req.body.color);
  res.send({"success": true})
});


app.listen(8000, function(){
  console.log("app is listening on port 8000");
})
