// Write a constructor function & modify the prototype for a GameDie object
// - A new GameDie should have a method 'roll' which displays a number between 1 and 6
// - Instantiate a GameDie and use the roll method



// The new keyword starts a three step process
// 1. Creates a new object

// 2. Set the objects __proto__ to the functions prototype

// 3. Evaluates the constructor function with the objects as this


// Constructor function
function GameDie(){
}

// Constructor functions prototype
GameDie.prototype = {
  roll: function(){
    console.log(Math.floor(Math.random()*6+1))
  }
}

// Creating the object (in this case not this attributes exist)
var newGame = new GameDie



// a die with var number of sides


function GameDie(numSides){
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random()*this.numSides)+1;
    console.log(num)
  }
}

var newGame = new GameDie(10)





