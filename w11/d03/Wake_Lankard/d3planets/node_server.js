var express   = require('express');
var request   = require('request');
var path      =require('path');
var methodOverride = require('method-override');

var app = express();

app.use(express.static(path.join(__dirname, 'public')));
// app.use(methodOverride);

app.get('/planets' , function(req,res) {
  request('http://exoapi.com/api/skyhook/planets/all', function(err, response, body){
    if (!err && response.statusCode == 200){
      res.send(body);
    }
  });
});

  app.listen(8000, function(){
    console.log("running on 8000");
  });

