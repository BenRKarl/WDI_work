////////////////////
// Scope Example
////////////////////

function dance() {
  var funklevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf() {
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel -2;
    var confidence = 0;
  }

  makeFoolOfSelf()

}

var selfEsteem = 10;
dance()
console.log('How good you feeling?: ', selfEsteem)


////////////////////
// Closure Example
////////////////////

function addFunctionBuilder(numToAdd) {
  var message = 'Where am I?';
  return function(number) {
      console.log(message);
      return (number + numToAdd);
  };

}

var addTwo = addFunctionBuilder(2);

// ex. in node: addTwo(4)
////////////////////
// Callback Example
////////////////////

function cheer(){
    console.log('Hooray!!!')
}

function doWorkNow(doAfter){
  
  // Do a bunch of stuff(like fold a paper airplane)
          // Demonstrated here via a loop thing
            for (var i = 0; i < 10000; i++}{
              console.log(i);
            };

      doAfter();

    }

  doWorkNow(cheer)

////////////////////
// Timeout Example
////////////////////


setTimeout(function(){console.log('You are awesome')}, 30005000)



////////////////////
// Constructor Function
////////////////////


function Person (name) {
  this.name = name;
}

Person.prototype = {
  warmBlooded: true,
  jump: function(){
    console.log('JUMP JUMP');
  }
}

// function Person (name){
//   this.name = name;
// }
// var lich = new Person('lo lo');
// }




function GameDie (numSides) {
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var num =  Math.floor(Math.random() * this.numSides) + 1;
              console.log(num);
  }
}


  

function GameDie (roll) {
  this.roll = roll;
}
function roll(min, max) {
  return Math.floor(Math.random(var i > 0; i <= 6; i++);
  }
}



function GameDie (roll) {
  this.roll = roll;
}



function randomInt(min,max)
{
    roll: function(){
      for (var i > 0 && return Math.floor(Math.random()*(max-(min+1))+(min+1));
}











function GameDie(numSides){

}



GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random() * 6) + 1;
    console.log(num)
  }
}

// var myDie = new GameDie();















function Computer(osVersion){

}

Computer.prototype(){
  screenSize: 13inch
  osVersion: DOS
    update: function(){

    }
}






Computer.prototype.osVersion = 'Mt Cat';
// Computer.prototype = {osVersion 'Mt Cat'};


var comp1 = new Computer(12);
var comp2 = new Computer(13);
var comp3 = new Computer(14);
var comp4 = new Computer(15);


Computer.prototype.osVersion = 'Snow Cat'