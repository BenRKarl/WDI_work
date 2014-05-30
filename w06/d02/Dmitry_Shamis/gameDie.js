function GameDie(numSides) {
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function () {
    return Math.floor(Math.random() * this.numSides) + 1;
  }
};

var myTwentySidedDie = new GameDie(20);
