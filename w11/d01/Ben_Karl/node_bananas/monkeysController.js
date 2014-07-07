var Monkey = require(__dirname + '/monkey');

exports.index = function(req, res){
  Monkey.find(function(err, monkeys){
    if (err) return console.error(err);
    res.send(monkeys);
  });
}

exports.create = function(req, res){
  Monkey.create({ name: req.body.name }, function(err, monkey){
    if (err) return console.error(err);
    res.send(monkey);
  });
}

exports.delete = function(req, res){
  Monkey.findById(req.params.id, function(err, monkey){
    if (err) return console.error(err);
    monkey.remove(function( err ){
      if (err) return console.error(err);
      return res.send({'success':'ok'});
    });
  });
}

exports.update = function(req, res){
  Monkey.findOneAndUpdate({ _id: req.body._id}, {name: req.body.name}, function(err, monkey){
    if (err) return console.error(err);
    return res.send({'success':'ok'});
  });
}
