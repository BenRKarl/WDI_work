function GameDie (numSides){
  this.numSides = numSides;
}

GameDie.prototype = {
  roll: function(){
    console.log(Math.floor(Math.random() * this.numSides + 1));
  }
}


var sixSidedDie = new GameDie(6);

var myElevenSidedDie = new GameDie(11);

