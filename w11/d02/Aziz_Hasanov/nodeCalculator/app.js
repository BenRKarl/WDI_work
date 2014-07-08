var express = require("express");
var app = express();
var path = require("path");

calculator = {};

calculator.add = function(x, y) {
  return x + y;
};
calculator.subtract = function(x, y) {
  return x - y;
};
calculator.divide = function(x, y) {
  return x / y;
};
calculator.multiply = function(x, y) {
  return x * y;
};
calculator.sqrt = function(x) {
  return Math.sqrt(x);
};

// :y? makes it optional
app.get("/:operator/:x/:y?", function(req, res) {
  // x & y have to be parsed as integers because they come in as strings
  var x = parseInt(req.params.x),
      y = parseInt(req.params.y),
      operator = req.params.operator;

  var fn = calculator[operator];
  var result = fn(x, y);
  console.log(result);
  res.send(result.toString());
});

// app.get("/add/:x/:y", function(req, res) {
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.add(x, y);
//   console.log(result);
//   res.send(result.toString());
// });
// app.get("/subtract/:x/:y", function(req, res) {
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.subtract(x, y);
//   console.log(result);
//   res.send(result.toString());
// });
// app.get("/divide/:x/:y", function(req, res) {
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.divide(x, y);
//   console.log(result);
//   res.send(result.toString());
// });
// app.get("/multiply/:x/:y", function(req, res) {
//   var x = parseInt(req.params.x),
//       y = parseInt(req.params.y);
//   var result = calculator.multiply(x, y);
//   console.log(result);
//   res.send(result.toString());
// });

app.listen(8000);

