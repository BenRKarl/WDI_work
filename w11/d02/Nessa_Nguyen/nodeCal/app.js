var express        = require('express');
var methodOverride = require('method-override');
var app            = express();

app.use(methodOverride());
app.use(express.static(__dirname));

calculator = {}
calculator.add = function(x,y) {
  return x + y;
}
calculator.subtract = function(x,y) {
  return x - y;
}
calculator.multiply = function(x,y) {
  return x * y;
}
calculator.divide = function(x,y) {
  return x / y;
}
calculator.sqrt = function(x) {
  return Math.sqrt(x);
}

app.get('/:operator/:num1/:num2?', function(req, res) {
  var operator = req.params.operator;
  var num1   = parseInt(req.params.num1);
  var num2   = parseInt(req.params.num2);
  var result;
  var fn     = calculator[operator];
  var result = fn(num1, num2);
  res.send('The result is: '+result);
  console.log();
})

app.listen(8000, function() {
  console.log('Listening on port 8000');
})
