function GameDie (numSides) {
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random() * this.numSides) + 1;
    console.log(num)
  }
}

var mySixSideDie = new GameDie(6);
var myElevenSideDie = new GameDie(11);
