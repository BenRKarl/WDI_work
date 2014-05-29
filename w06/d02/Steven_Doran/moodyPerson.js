function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduction: function () {
    if (this.mood < 3) {
      console.log("I'm " + this.name + " and I'm pretty crappy.");
    } else if ((this.mood > 2) && (this.mood < 8)) {
      console.log("I'm " + this.name + " and I'm doing all right.");
    } else if (this.mood > 7) {
      console.log("I'm " + this.name + " and I'm rockin'!");
    }
  }
};

var bill = new Person('bill', 22, 7);
var susan = new Person('susan', 35, 1);
var harriet = new Person('harriet', 52, 9);
var gary = new Person('gary', 14, 6);
var ginger = new Person('ginger', 76, 15);

bill.introduction();

