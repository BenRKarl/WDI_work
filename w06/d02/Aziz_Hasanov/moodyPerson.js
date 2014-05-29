function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function() {
    if (this.mood === "happy") {
      console.log("Hi! I am " + this.name + " Pleased to meet you");
    }
    else{
      console.log("Hi... " + this.name + " here...");
    }
  }
}

var aziz = new Person("aziz", 25, "happy");
var kim = new Person("kim", 30, "angry");
var sam = new Person("sam", 25, "unhappy");
var bob = new Person("bob", 25, "sad");
var joe = new Person("joe", 25, "happy");

var people = [aziz, kim, sam, bob, joe];

// var people = []
// people.push(aziz, kim, sam, bob, joe);
