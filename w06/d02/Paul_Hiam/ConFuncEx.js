
function GameDie(color, sides){
  this.color = color;
  this.sides = sides;
}
GameDie.prototype = {
  roll: function(){
    var num = Math.floor(Math.random() * this.sides + 1);
    console.log(num);
  }
}

greenie = new GameDie('green', 8);



function Computer(screenSize){
  this.screenSize = screenSize;
}
Computer.prototype.osVersion = 'Mt. Lion'
// Computer.prototype = {
//   osVersion: function(){
//     console.log(' version 2.1');
//   }  
// }
maco = new Computer(22);
wimp = new Computer(12);
gil = new Computer(18);
merc = new Computer(20);