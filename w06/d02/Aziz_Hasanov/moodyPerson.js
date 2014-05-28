var people = ['bob', 'sam', 'joe', 'kim', 'ken'];

// var people = [];

function Person(name, age, mood) {
  this.name = name;
  this.age = age;
  // this.mood = mood;
}

Person.prototype = {
  introduce: function(mood) {
    for (i in people) {
      if (mood == "happy") {
        console.log("Hi, I am " + people[i] + "Pleased to meet you!");
      }
      else {
        console.log("Hi... " + people[i] + "here...");
      }
    }
  }
}

var new_person = new Person("aziz", 25, "happy");