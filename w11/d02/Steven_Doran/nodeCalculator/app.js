var express = require('express');
var app = express();

var calculator = {
   add: function(x,y) {
      return x+y;
   },
   subtract: function(x,y) {
      return x-y;
   },
   multiply: function(x,y) {
      return x*y;
   },
   divide: function(x,y) {
      return x/y;
   },
   sqrt: function(x) {
      return Math.sqrt(x); 
   }
};

app.get('/:operator/:x/:y?', function(req, res) {
   var x = parseInt(req.params.x),
       y = parseInt(req.params.y),
       operator = req.params.operator;

   var fn = calculator[operator];
   var result = fn(x,y);
   res.send(result.toString());
});

app.listen(8000, function() {
   console.log('calculator app is listening on port 8000')
});