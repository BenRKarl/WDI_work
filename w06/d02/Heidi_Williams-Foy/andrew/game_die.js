function GameDie(numSides){
   this.numSides = numSides;

}

GameDie.prototype = {
   roll: function(){
   	var num = Math.floor(Math.random() * 6) + 1
   	console.log(num);
   }
}

var mySixSideDie = new GameDie(6);

var myElevenDie = new GameDie(11);


