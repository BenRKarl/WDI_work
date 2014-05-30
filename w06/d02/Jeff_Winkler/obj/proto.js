


function GameDie(numSides) {
  this.sides = numSides;
}

GameDie.prototype = {
  roll: function() {
    console.log(Math.floor(Math.random()*this.sides)+1);
  }
}

var newGame = new GameDie(12);


function Computer(screenSize) {
  this.screenSize = screenSize;
}

Computer.prototype = {
  osVersion: 'linux'
}

var dell = new Computer(20);
var hp = new Computer(24);
var mac = new Computer(16);
var acer = new Computer(12);

