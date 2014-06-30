var Schema = mongoose.Schema;

var MonkeySchema = new Schema({
  name    :  String
});
// db.model('Monkey', MonkeySchema) is what is
// returned when i require this file, 'monkey.js'
module.exports = db.model('Monkey', MonkeySchema);