function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {

  introduce: function(){
    console.log("I'm in.");
  }

  // introduce: function(){
  //   switch(this.mood) {
  //     case 0:
  //       output = this.name + ", " + this.age + ". Shut up.";
  //       break;
  //   }
  // }
}

myPerson = new Person("John", 23, 0);
console.log(myPerson.introduce());