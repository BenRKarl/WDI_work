// Constructor function example:

function BoyPopStar (name, haircut) {
  this.name = name;
  this.haircut = haircut;
  this.moves = [];
}

BoyPopStar.prototype.learnMoves = function(move) {
  this.moves.push(move);
  return this.moves;
};


function cizzurp(n) {
  for (var i = 0; i <= n; i++) {
    if (i % 3 === 0 && i % 5 === 0) {
      console.log("cizzurp");
    }

    else if (i % 3 === 0 ) {
      console.log("cizz");
    }

    else if (i % 5 === 0 ) {
      console.log("urp");
    }

    else {
      console.log(i);
    }
  }
}
