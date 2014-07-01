var Monkey = require(path.join(__dirname, 'monkey'));

exports.index = function(req, res) {
   Monkey.find(function(err, monkey) {
     if (err) return console.log(err);
     res.send(monkey); 
   });
};

exports.create = function(req, res) {
   Monkey.create({name: req.body.name}, function(err, monkey) {
      if (err) return console.log(err);
      res.send(monkey);
   })
};

exports.update = function(req, res) {
   Monkey.findOneAndUpdate({_id: req.params.id}, {name: req.body.name}, function(err, monkey) {
      if (err) return console.error(err); 
      res.send({'success' : 'ok'});
   })
};

exports.delete = function(req, res) {
   Monkey.findOneAndRemove({_id: req.params.id}, function(err) {
      if (err) return console.error(err);
      res.send({'success' : 'ok'});
   })
}