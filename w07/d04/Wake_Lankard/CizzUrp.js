function BoyPopStar(name, haircut, moves){
  this.name = name;
  this.haircut = haircut;
  this.moves = [];
};

BoyPopStar.Prototype.learnMoves =function(move){
  this.moves.push(move);



})