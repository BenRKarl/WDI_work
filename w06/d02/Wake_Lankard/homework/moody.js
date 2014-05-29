function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {



  introduce: function(){
    var output = "";
    switch(this.mood) {
      case 0:
      case 1:
      case 2:
        output = this.name + ", " + this.age + ". Shut up.";
        break;
      case 3:
      case 4:
      case 5:     
        output = "I'm " + this.name + " I'm " + this.age + ".  I'm fine."
        break;
      case 6:
      case 7:
      case 8:
        output = "My name's " + this.name + " I'm " + this.age + "-years old, and I'm pretty good."
        break;
      case 9:
      case 10:
        output = "Hi! I'm " + this.name + ".  I'm " + this.age + ", and I am totally awesome.";
        break;
      default:
        output = "I'm " + this.name + ". I am " + this.age + ". I have no idea how I feel right now.";


    }
    return output;
  }

}
var people = [];
people[0] = new Person("John", 23, 2);
people[1] = new Person("Susan",34, 7);
people[2] = new Person("Jane", 9, 10);
people[4] = new Person("Frank", 14, 4);
people[3] = new Person("Edward", 23, 11);

for (i in people){
  console.log(people[i].introduce())
}

