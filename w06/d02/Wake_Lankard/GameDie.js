function GameDie(sides){
  this.sides = sides;

}

GameDie.prototype = {
  roll: function(){
    return Math.floor(Math.random() * this.sides)+1;
  }
}

var myDie = new GameDie();




function Computer(screenSize){
  this.screenSize = screenSize;
}

Computer.prototype = {
  osVersion: 1
}

comp1 = new Computer(10);
comp2 = new Computer(20);
comp3 = new Computer(30);
comp4 = new Computer(40);