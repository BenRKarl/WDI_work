function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
};

Person.prototype = {
  introduce: function(){
    if (this.mood >= 5) console.log("Hi!, my name is " + this.name + "!! I am happy!");
    if (this.mood < 5) console.log("My name is " + this.name + ". My mood is below 5, which, naturally, means I'm ho hum.");
  }
};

var bob = new Person('Bob', 45, 4)
var larry = new Person('Lawrence', 55, 8)
var joe = new Person('Joe', 50, 9)
var fred = new Person('Fred', 53, 1)
var tommy = new Person('Tommy', 40, 10)

var pokerClub = [bob, larry, joe, fred, tommy]

for (var i in pokerClub){
  pokerClub[i].introduce();
}
