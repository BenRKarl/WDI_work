var basketball = {
  name: 'Bball',
  age: 3,
  bounce: function(){
    console.log("Hi I am now bouncing.");
  },
  hoops: function(){
    console.log("You made a hoop!");
  },
  pass: function(){
    console.log(this.name + " got passed to that person!")
  }
}

basketball.bounce()
basketball.hoops()
basketball.pass()

//////////

function GameDie(numSides){
  this.sides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random()*this.sides)+1;
    console.log(num);
  }
}

var newDie = new GameDie()

////////////

function Computer(screenSize){
  this.screenSize = screenSize;
}

Computer.prototype = {
  osVersion: 4
}

var lappyTop = new Computer(12)
var deskyTop = new Computer(17)
var mobileTop = new Computer(8)
var otherTop = new Computer(72)

deskyTop.osVersion
mobileTop.osVersion

Computer.prototype.osVersion = 24

deskyTop.osVersion
mobileTop.osVersion
