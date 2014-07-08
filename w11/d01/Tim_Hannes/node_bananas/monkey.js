var Schema = mongoose.Schema;

var MonkeySchema = new Schema({
  name     : String
});

//db.model('Monkey', MonkeySchema) is what is returned when I require this file(monkey.js)
//it is an interface for dealing with models, allows us to find, create, etc records.
module.exports = db.model('Monkey', MonkeySchema);
//hello module, heres our model 'monkey', we're calling the table monkeyschema

