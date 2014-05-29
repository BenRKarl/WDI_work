// Moody Person Object

// Create an array of 5 person objects

// A person should have attributes including name, age, and mood

// A person should be able to introduce itself

// This introduction should reflect their mood

// For example:
// If the person is happy, their introduction may be
// 'Hi! I am Bob! Pleased to meet you!'

// If the person is unhappy, their introduction may be
// 'hi... Bob here...'

// Note: How to implement mood is your decision. It could be strings like 'happy' 
// or 'unhappy' or it also could be a range of 0 to 10, where 10 is best mood ever 
// and 0 is worst mood ever. Your choice here.



function MoodyPerson(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

MoodyPerson.prototype = {
  introduce: function(){
    if (this.mood === 'happy'){
      console.log('Hi! I am ' + this.name + '! Pleased to meet you');
    } else if (this.mood === 'unhappy'){
      console.log('hi.... ' + this.name + ' here....');
    } else{
      console.log('Hi! I am ' + this.name + '!');
    }
  }
}


var newPerson = new MoodyPerson('Bob', 40, 'happy')

