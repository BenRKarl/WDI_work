arr = new Array;

function Person(name, age, mood){
  this.name = name;
  this.age = age;
  this.mood = mood;
}

Person.prototype = {
  introduce: function(){

    if (this.mood == 'happy'){
      console.log('Hey!!!!!! I\'m ' + this.name + '. Pleased to meet you!');
    }
    else if (this.mood == 'sad') {
      console.log('hi.. ' + this.name + ' here..');
    }
    else {
      console.log('Uh. Hey. It\'s me, ' + this.name + '. ' + 'Cool...');
    }
  }
}

var lich = new Person('lichard', 19, 'happy');
var bod = new Person('Bod', 28, 'sad');
var theDude = new Person('Dude', 43, 'chillin\'');
var kingHenryIII = new Person('King Henry III', 806, 'Duh king yo');
var larry = new Person('Larry Page', 41, 'happy');

arr.push(lich, bod, theDude, kingHenryIII, larry);
