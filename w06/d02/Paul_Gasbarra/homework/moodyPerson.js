// Create an array of 5 person objects
// A person should have attributes including name, age, and mood
// A person should be able to introduce itself
// This introduction should reflect their mood
// For example:
// If the person is happy, their introduction may be
// 'Hi! I am Bob! Pleased to meet you!'
// If the person is unhappy, their introduction may be
// 'hi... Bob here...'
// Note: How to implement mood is your decision. It could be strings like 'happy' or 'unhappy' or it also could be a range of 0 to 10, where 10 is best mood ever and 0 is worst mood ever. Your choice here.

function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}


Person.prototype = {
  introduction: function(){
    switch(this.mood){
    case 1:
    case 2:
    case 3:
      console.log("Hey there...my name is..." + this.name);
      break;
    case 4:
    case 5:
    case 6:
     case 7:
      console.log("Hello, I'm " + this.name + ". Pleased to meet you.");
      break;
    case 8:
    case 9:
      console.log("My main man! What is happening! " + this.name + " is the name and good times are my game!");
      break;
    case 10:
      console.log("Name... " + this.name + "! Can't...speak...so...haaaaaaaappppeeeee!");
      break;
    }
  }
}

var hank = Person new('Hank', 45, 9);
var saul = Person new('Saul', 41, 2);
var jessie = Person new('Jessie', 23, 6);
var walt = Person new('Walt', 53, 10);
var skyler = Person new('Skyler', 46, 4);


people = [];
people = [hank, saul, jessie, walt, skyler];
