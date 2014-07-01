var express = require('express');
global.path = require('path');
var app = express();

app.use(express.static(path.join(__dirname, 'public')));
app.get('/:op/:x/:y', function(req, res){

  var op = req.params.op;
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var stringToOperator = {
    'divide'  : function (x,y)   {return (x/y)},
    'multiply': function (x,y)   {return (x*y)},
    'add'     : function (x,y)   {return (x+y)},
    'subtract': function (x,y)   {return (x-y)}
  }
  console.log(stringToOperator[op](x,y));
})

app.listen(8000, function(){
  console.log('app is listening on port 8000');
})
