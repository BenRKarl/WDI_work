function gameDie(numSides){
  this.numSides = numSides;
}

gameDie.prototype = {
  roll: function(){
  num = Math.floor(Math.random() * this.numSides) + 1
  console.log(num)
  }
}
var luckyDie = new gameDie(7)

////////////////


function Computer(screensize){
  this.screensize = screensize
};

Computer.prototype = {
  osVersion: "Snowleopard"
};

var myComputer = new Computer(16);
var yourComputer = new Computer(12);
var hisComputer = new Computer(10);
var herComputer = new Computer(18);

Computer.prototype.osVersion = "Mavericks"
