function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood
}

Person.prototype = {
  introduce: function() {
    if (this.mood === "happy") {
      console.log("Whoa, "+this.name+" here, what a great day!?");
    } else {
      console.log("I'm "+this.name+" and today is not good.");
    }
  }
}

var jeff = new Person("Jeff", 21, "happy");
var lex = new Person("Lexington", 4, "happy");
var george = new Person("George", 54, "sad");
var herb = new Person("Herb", 19, "happy");
var loke = new Person("Lokiffer", 90, "sad");

jeff.introduce()
lex.introduce()
george.introduce()
herb.introduce()
loke.introduce()
