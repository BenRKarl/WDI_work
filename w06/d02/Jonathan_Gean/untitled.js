function GameDie (numSides){
this.numSides = numSides;
}

GameDie.prototype = {
  sides: numSides,
  roll: function(){
     return Math.floor((Math.random() * sides) + 1);
  }
}

