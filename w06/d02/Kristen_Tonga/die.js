function GameDie(numSides){
  this.sides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random() * this.sides) + 1;
    console.log(num)
  }
}

var mySixSideDie = new GameDie(6);
var myElevenSideDie = new GameDie(11);



// COMPUTER

function Computer(screenSize){
  this.screenSize = screenSize
}

Computer.prototype = {
  osVersion: '6.2.0.0'
}

var laptop = new Computer('11.5')
var largeLaptop = new Computer(17)
var desktop = new Computer(21)
var smartPhone = new Computer(4)
