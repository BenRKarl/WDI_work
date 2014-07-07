var Schema = mongoose.Schema;

var Monkey = new Schema({
  name  :String
});

module.exports = db.model('Monkey', Monkey);
