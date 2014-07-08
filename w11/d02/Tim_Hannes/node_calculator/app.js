var express = require('express');
var app     = express();

// app.get('/:whatever', function(req,res){
//   res.send("I love "+ req.params.whatever );
// })

calculator = {}
calculator.add = function(x,y){
  return x + y;
}
calculator.subtract = function(x,y){
  return x - y;
}
calculator.multiply = function(x,y){
  return x * y;
}
calculator.divide = function(x,y){
  return x / y;
}
calculator.sqrt = function(x,y){
  return Math.sqrt(x);
}

// all in one function
app.get('/:operator/:x/:y?', function(req, res){
  var x        = parseInt(req.params.x),
      y        = parseInt(req.params.y),
      operator = req.params.operator;

  var fn = calculator[operator];
  //we are taking the operator from the URL and applying it here
  var result = fn(x,y);
  res.send(result.toString());
  //express doesn't like integers, so we convert to string
})

// app.get('/subtract/:x/:y', function(req, res){
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.subtract(x,y);
//   res.send(result.toString());
// })

// app.get('/multiply/:x/:y', function(req, res){
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.multiply(x,y);
//   res.send(result.toString());
// })

// app.get('/divide/:x/:y', function(req, res){
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.divide(x,y);
//   res.send(result.toString());
// })

// app.subtract('/subtract/:x/:y', function(req, res){
//   res.params(x,y);
// })

app.listen(8000, function(){
  console.log('Express App is listening on port 8000.')
})
