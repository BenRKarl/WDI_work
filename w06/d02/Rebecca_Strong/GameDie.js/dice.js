//##GameDie

//write a constructor function and modify the prototype for a GameDie object

//A new GameDie should have a method 'roll' which displays a number between 1 and 6

//Instantiate a GameDie and use the roll method.


function GameDie(numSides) {
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random() * this.numSides) + 1;
  console.log(num)
  }
}

var bondSixSideDie = new GameDie(6);
var drEvilElevenSideDie = new GameDie(11);


// //function Person (name) {
//   this.name = name;
// }

// Person.prototype = {
//   warmBlooded: true,
//   jump: function(){
//     console.log('JUMP JUMP JUMP JUMP')

//   }
// }



// var lich = new Person('Lichard')
// var bod = new Person('Bod')
