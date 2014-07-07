var express  = require('express');
global.path = require('path');
var bodyParser = require('body-parser');
var methodOverride = require('method-override');


//get app object
var app = express();
//config app
app.use(bodyParser());
app.use(methodOverride());


calculator = {}
calculator.add = function(x, y){
  return x + y
}
calculator.subtract = function(x, y){
  return x - y
}
calculator.multiply = function(x, y){
  return x * y
}
calculator.divide = function(x, y){
  return x / y
}
calculator.sqrt = function(x){
  return Math.sqrt(x);
}

//routes
// var monkeysController = require(path.join(__dirname, 'monkeysController'));
app.get('/:operator/:x/:y?', function(req, res){
  // var x = req.params.x
  // var y = req.params.y
  var fn = calculator[req.params.operator]
  var x = parseInt(req.params.x)
  var y = parseInt(req.params.y)
    res.send("" + fn(x,y))
  })
//   if (req.params.operator == 'subtract') {
//     console.log('we are hitting the calculator: subtract')
//     var result = calculator.subtract(parseInt(req.params.x), parseInt(req.params.y))
//     console.log(result)
//     res.send("" + result)
//   }

//   if (req.params.operator == 'multiply') {
//     console.log('we are hitting the calculator: multiply')
//     var result = calculator.multiply(parseInt(req.params.x), parseInt(req.params.y))
//     console.log(result)
//     res.send("" + result)
//   }

//   if (req.params.operator == 'divide') {
//     console.log('we are hitting the calculator: divide')
//     var result = calculator.divide(parseInt(req.params.x), parseInt(req.params.y))
//     console.log(result)
//     res.send("" + result)
//   }
// });

// app.get('/subtract/:x/:y', function(req, res){
//   // var x = req.params.x
//   // var y = req.params.y

// });
// function(){
//   //gets all the monkeys and responds with all the monkeys in json format
// })

app.listen(8000, function(){
  console.log('app is listening on port 8000');
})
