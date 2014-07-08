var express = require('express');
var path = require('path');

var app = express();

app.use(express.static(path.join(__dirname, 'public')));

// var calcController = {
//   add: function(req, res) {
//     var x = parseInt(req.params.x);
//     var y = parseInt(req.params.y);
//     var sum = x + y;
//     res.send(sum.toString());
//   },
//   subtract: function(req, res) {
//     var x = parseInt(req.params.x);
//     var y = parseInt(req.params.y);
//     var difference = x - y;
//     res.send(difference.toString())
//   },
//   multiply: function(req, res) {
//     var x = parseInt(req.params.x);
//     var y = parseInt(req.params.y);
//     var product = x * y;
//     res.send(product.toString())
//   },
//   divide: function(req, res) {
//     var x = parseInt(req.params.x);
//     var y = parseInt(req.params.y);
//     var quotient = x / y;
//     res.send(quotient.toString())
//   },
//   all: function(req, res) {
//     var x = parseInt(req.params.x);
//     var y = parseInt(req.params.y);
//     var sum = x + y;
//     var difference = x - y;
//     var product = x * y;
//     var quotient = x / y;
//     var answers = {
//       addition: sum,
//       subtraction: difference,
//       multiplication: product,
//       division: quotient
//     }
//     res.send(answers);
//   }
// }

// app.get('/:operand/:x/:y', calcController.add);
// app.get('/subtract/:x/:y', calcController.subtract);
// app.get('/multiply/:x/:y', calcController.multiply);
// app.get('/divide/:x/:y', calcController.divide);
// app.get('/:x/:y', calcController.all);

calculator = {
  add: function(x,y) {
    return x + y;
  },
  subtract: function(x,y) {
    return x - y;
  },
  multiply: function(x,y) {
    return x * y;
  },
  divide: function(x,y) {
    return x/y;
  },
  sqrt: function(x) {
    return Math.sqrt(x);
  }
}

app.get('/:operator/:x/:y?', function(req, res) {
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var operator = req.params.operator;

  var fn = calculator[operator]
  var result = fn(x,y);
  res.send(result.toString())
})

app.listen(8000, function() {
  console.log("App is counting... on 8000")
})
