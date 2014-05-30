function GameDie(numSides) {

}

GameDie.prototype = {
  roll: function() {
    var result = Math.floor(Math.random() * 6) + 1;
    console.log(result);
  }
}

// var sixSideDie = new GameDie(6);
// sixSideDie.roll();
// var octoDie = new GameDie(8);
// octoDie.roll();



function Computer(screenSize) {
  this.screenSize = screenSize;
}

Computer.prototype = {
  osVersion: 'Windows 7'
};

var comp1 = new Computer(11)
var comp2 = new Computer(12)
var comp3 = new Computer(13)
var comp4 = new Computer(17)

Computer.prototype.osVersion = 'Mac OS X';
console.log(comp3.osVersion);
console.log(comp3.screenSize);
















