
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
