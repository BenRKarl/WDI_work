function GameDie (numSides){
  this.sides = numSides;
}

GameDie.prototype = {
  roll: function(){
    console.log(Math.floor(Math.random() * this.sides) + 1);
  }
}

var die = new GameDie()
