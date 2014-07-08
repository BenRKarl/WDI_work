

exports.plus = function(req, res){
  var result = req.params.x + req.params.y;
  res.render('index.html');

}