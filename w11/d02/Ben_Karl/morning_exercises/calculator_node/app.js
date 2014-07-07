var express = require('express');
var app = express();

calculator = {};

calculator.add = function(x, y){
  return x + y;
};
calculator.subtract = function(x, y){
  return x - y;
};
calculator.divide = function(x, y){
  return x/y;
};
calculator.multiply = function(x, y){
  return x*y;
};
calculator.squareRoot = function(x){
  return Math.sqrt(x);
};
calculator.square = function(x){
  return x*x;
};

// app.get('/add/:x/:y', function(req, res){
//   var x = parseInt(req.params.x);
//   var y = parseInt(req.params.y);
//   var result = calculator.add(x, y);
//   res.send(x + ' plus ' + y + ' is: ' + result);
// });

// app.get('/subtract/:x/:y', function(req, res){
//   var x = parseInt(req.params.x);
//   var y = parseInt(req.params.y);
//   var result = calculator.subtract(x, y);
//   res.send(x + ' minus ' + y + ' is: ' + result);
// });

// app.get('/divide/:x/:y', function(req, res){
//   var x = parseInt(req.params.x);
//   var y = parseInt(req.params.y);
//   var result = calculator.divide(x, y);
//   res.send(x + ' divided by ' + y + ' is: ' + result);
// });

// app.get('/multiply/:x/:y', function(req, res){
//   var x = parseInt(req.params.x);
//   var y = parseInt(req.params.y);
//   var result = calculator.multiply(x, y);
//   res.send(x + ' multiplied by ' + y + ' is: ' + result);
// });

// app.get('/square_root/:x', function(req, res){
//   var x = parseInt(req.params.x);
//   var result = calculator.square_root(x);
//   res.send('the square root of ' + x + ' is: ' + result);
// });

// app.get('/square_root/:x', function(req, res){
//   var x = parseInt(req.params.x);
//   var result = calculator.square_root(x);
//   res.send('the square root of ' + x + ' is: ' + result);
// });



app.get('/:operator/:x/:y?', function(req, res){
  var x         = parseInt(req.params.x);
  var y         = parseInt(req.params.y);
  var operator  = req.params.operator;
  //Uses the string to grab a function from the object
  var fn = calculator[operator];
  var result  = fn(x, y);
  res.send(result.toString());
});

app.listen(8000, function(){
  console.log('Express app running on 8000');
});
