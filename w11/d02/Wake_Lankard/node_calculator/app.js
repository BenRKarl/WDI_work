var express = require('express');
var methodOverride = require('method-override');
var bodyParser = require('body-parser');
global.path = require('path');

var app = express();

app.use(bodyParser());
app.use(methodOverride());
// app.use(express.static(path.join(__dirname, 'public')));
calculator = {}
calculator = function(op,x,y){
  switch (op){
    case "add":
      return (x + y).toString();
      break;
    case "subtract":
      return (x - y).toString();
      break;
    default:
      return "illegal operator"
  }
}


app.get('/:op/:x/:y?', function(req, res){
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var op = req.params.op;
  console.log("add: " + op);
  var result = calculator(op,x,y);
  res.send(result);
  console.log("result= " + result);
});


app.listen(8000, function(){
  console.log('app is listening on port 8000');
})