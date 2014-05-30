function GameDie (name){
  this.name = name;
}

GameDie.prototype = {
  roll: function(){
    console.log(Math.floor(Math.random() * 6) + 1);
  }
}

var fuzzyDice = new GameDie('fuzzy')


/////////// Class Solution ////////////////

function GameDie(numSides){
  this.numSides = numSides;
}

GameDie.prototype ={
  roll: function(){
    var num = Math.floor(Math.random() * this.numSides) + 1;
    console.log(num);
  }
}

var mySixSidedDie = new GameDie(6);
var myElevenSidedDie = new GameDie(11);
