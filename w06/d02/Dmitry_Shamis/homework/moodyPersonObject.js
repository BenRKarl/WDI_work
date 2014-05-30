function Person(name, mood) {
  this.name = name;
  this.mood = mood;
}

Person.prototype = {
  introduce: function () {
    var note = "What it is?";
    if (this.mood > 7) {
      note = "What a day!";
    } else if (this.mood > 4) {
      note = "Whatever...";
    } else {
      note = "ughhhhhhhhh";
    }
    console.log("Hi, I'm " + this.name + ". " + note);
  }
};

var names = [];

var bob = new Person('Bob', 8);
var lich = new Person('Lichard', 5);
var wolverine = new Person('Wolverine', 10);
var spiderman = new Person('Spiderman', 1);
var zombie = new Person('Zombie', 0);

names.push(bob, lich, wolverine, spiderman, zombie);
