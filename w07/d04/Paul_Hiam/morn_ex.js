function BoyPopStar(name, haircut){
  this.name = name;
  this.haircut = haircut;
  this.moves = []
}

BoyPopStar.prototype = {
  learnMoves: function(move){
    this.moves.push(move);
    return this.moves
  }
}
var bieber = new BoyPopStar('Beebs', 'lame peacock tuft');
bieber.learnMoves('be a jerk');

function cizzurp (n){
 
  for (var i = 0; i < n; i++) {
     var comment = '';
    if (i % 3 === 0){
      comment += 'cizz';
    }
    if(i % 5 === 0){
      comment += 'urp';
    }
    if(comment === ""){
      comment += i;
    }
    console.log(comment)
  };
}
BoyPopStar.prototype.cizzurp = cizzurp;