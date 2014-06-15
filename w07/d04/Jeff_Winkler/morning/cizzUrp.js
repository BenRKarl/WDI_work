


function BoyPopStar(name, haircut) {
  this.name = name;
  this.haircut = haircut;
  this.moves = [];
}

BoyPopStar.prototype.learnMoves = function(danceMove) {
  this.moves.push(danceMove);
  return this;
}


function cizzurp(n) {
  for (var i = 1; i <= n; i++) {
    var str = '';
    if (i%3==0) {
      str += 'cizz';
    }
    if (i%5==0) {
      str += 'urp';
    }
    if (str=='') {
      str = i;
    }
    console.log(str);
  };
}

biebs = new BoyPopStar('Bieiber', 'bowl');

biebs.learnMoves('gen');

BoyPopStar.prototype.cizzurp = cizzurp;

