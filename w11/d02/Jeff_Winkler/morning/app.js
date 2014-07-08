
var express = require('express');

var app = express();

calc = {}

calc.add = function(x,y) {
  return x+y;
}

calc.subtract = function(x,y) {
  return x-y;
}

calc.multiply = function(x,y) {
  return x*y;
}

calc.divide = function(x,y) {
  return x/y;
}

calc.sq = function(x) {
  return Math.pow(x,0.5);
}

app.get('/:type/:x/:y?', function(req, res) {
  type = req.params.type;
  x = parseInt(req.params.x);
  y = parseInt(req.params.y);
  res.send(calc[type](x,y).toString());
});


app.listen(8000, function() {

});


