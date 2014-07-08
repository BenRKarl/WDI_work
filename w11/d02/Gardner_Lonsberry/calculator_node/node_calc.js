var express = require('express');
var app = express();

app.get('/:whatever', function(req, res){
  res.send("Im happy"+req.params.whatever );
})

app.listen(8000, function(){
  console.log("Express app running on 8000");
})