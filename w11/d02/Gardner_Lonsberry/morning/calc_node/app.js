var express = require('express');
var app = express();

calculator = {}
calculator.add = function(x, y){
  return x + y;
}
calculator.subtract = function(x, y){
  return x - y;
}
calculator.multiply = function(x, y){
  return x * y;
}
calculator.divide = function(x, y){
  return x / y;
}
calculator.sqrt = function(x){
  return Math.sqrt(x);
}

app.get('/add/:x/:y', function(req, res){
  var x = parseInt(req.params.x),
  y = parseInt(req.params.y);
  var result = calculator.add(x, y);
  res.send(result.toString());
})

app.get('/subtract/:x/:y', function(req, res){
  var x = parseInt(req.params.x),
  y = parseInt(req.params.y);
  var result = calculator.subtract(x, y);
  res.send(result.toString());
})

app.get('/multiply/:x/:y', function(req, res){
  var x = parseInt(req.params.x),
  y = parseInt(req.params.y);
  var result = calculator.multiply(x, y);
  res.send(result.toString());
})

app.get('/divide/:x/:y', function(req, res){
  var x = parseInt(req.params.x),
  y = parseInt(req.params.y);
  var result = calculator.divide(x, y);
  res.send(result.toString());
})

app.get('/:operator/:x/:y?', function(req, res){
  var x = parseInt(req.params.x),
      y = parseInt(req.params.y),
      operator = req.params.operator;

  var fn = calculator[operator];
  var result = fn(x,y);
  res.send(result.toString());
})

app.listen(8000, function(){
  console.log("Express app running on 8000");
})