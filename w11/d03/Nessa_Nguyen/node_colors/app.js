var express     = require('express');
var path        = require('path');
var bodyParser  = require('body-parser');

var app = express();
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

var colors = ["red", "yellow", "blue"];

app.get('/colors', function(req, res) {
  res.send({colors: colors});
});

app.post('/colors', function(req, res) {
  var newColor = req.body.color;
  colors.push(newColor);
  res.send('Success');
});

app.listen(8000, function(){
  console.log("App is listening on port 8000");
})
