function Person(name, age, mood) {
  this.mood = mood;
  this.name = name;
  this.age = age;
}

Person.prototype = {
  introduce: function() {

    if (this.mood > 7) {
      note = "Whatttta day";
    } else if (this.mood < 6) {
      note = "Today is fine";
    }
    else {
      note = "Today sucks";
    }
    console.log("Hey, I'm" + this.name + note);
  }
};

var names = [];


var jeff = new Person("jeff", 24, 6);
var neal = new Person("neal", 26, 8);
var will = new Person("will", 28, 9);
var ben = new Person("ben", 45, 4);
var kevin = new Person("kevin", 65, 5);

names.push(jeff, neal, will, ben, kevin);
