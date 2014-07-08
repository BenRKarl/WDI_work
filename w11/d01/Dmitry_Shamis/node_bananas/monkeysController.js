var Monkey = require(path.join(__dirname, 'monkey'));

exports.index = function(req, res) {
  Monkey.find(function(err, monkeys) {
    if (err) return console.log(err);
    res.send(monkeys);
  })
}

exports.create = function(req, res) {
  Monkey.create({name: req.body.name}, function(err, monkey) {
    if (err) return console.log(err);
    res.send(monkey);
  })
}

// DIMA'S (WRONG) WAY
// exports.update = function(req, res) {
//   var monkeyUpdate = Monkey.findById(req.params.id);
//   monkeyUpdate.update({name: req.body.name}, function(err, monkey) {
//     if (err) return console.log(err);
//     res.send(monkey);
//   })
// }

// DIMA'S (RIGHT) WAY
exports.update = function(req, res) {
  Monkey.findById(req.params.id, function(err, monkey) {
    if (err) return console.error(err);
    monkey.update({name: req.body.name}, function(err) {
      if (err) return console.error(err);
      return res.send({'success' : 'ok'});
    })
  });
}

// MATT'S WAY
exports.update = function(req, res) {
  Monkey.findById(req.params.id, function(err, monkey) {
    if (err) return console.error(err);
    monkey.update({name: req.body.name}, function(err, updated) {
      if (err) return console.error(err);
      res.send(updated);
    })
  });
}

// DIMA'S (RIGHT) WAY
// exports.delete = function(req, res) {
//   var monkeyDelete = Monkey.findById(req.params.id);
//   Monkey.remove(monkeyDelete, function(err, monkey) {
//     if (err) return console.log(err);
//     res.send(monkey);
//   })
// }


// MATT'S WAY
exports.delete = function(req, res) {
  Monkey.findById(req.params.id, function(err, monkey) {
    if (err) return console.error(err);
    monkey.remove(function(err) {
      if (err) return console.error(err);
      return res.send({'success' : 'ok'});
    })
  });
}
