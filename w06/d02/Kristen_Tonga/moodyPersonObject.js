function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function () {
    switch (mood){
      case 5:
        console.log('Wow-ey! So glad you asked! Im ' + this.name + '... Whats youre name wonderful?');
        break;
      case 4:
        console.log("My name is " + this.name + ". Thanks for asking.");
        break;
      case 3:
        console.log('My name is ' + this.name);
        break;
      case 2:
        console.log(this.name);
        break;
      case 1:
        console.log("I don't want to talk to you.");
        break;

    }
  }
}


var gerard = new Person('Gerard', 20, 5)
var bill = new Person('Billy', 55, 4)
var megan = new Person('MeggyAnn', 35, 3)
var duey = new Person('Micheal', 62, 2)
var sue = new Person('Sue', 40, 1)
