function GameDie(numSides) {
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function() {
    var num = Math.floor(Math.random() * this.numSides) + 1;
    console.log(num)
  }
}

var gameSix = new GameDie(6);
var gameThirteen = new GameDie(13);

gameSix.roll();
gameThirteen.roll();
