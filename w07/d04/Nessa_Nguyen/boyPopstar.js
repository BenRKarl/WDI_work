function BoyPopstar(name, haircut){
  this.name = name;
  this.haircut = haircut;
  this.moves = []; 
}

BoyPopstar.prototype.learnMoves = function(move){
  this.moves.push(move);
  return this.moves;
}

var jbiebs = new BoyPopstar('Justin Bieber', 'the hair');
jbiebs.learnMoves('the MJ');
jbiebs.learnMoves('smooth rocking');


function cizzurp(n){
  for (var i = 1; i <= n; i++){
    var string = '';
    if (i % 3 === 0){
      string += 'cizz';
    }
    if (i % 5 === 0){
      string += 'urp';
    } 
    if (string === '') {
      string += i.toString();
    }
    console.log(string);  
  }
}

BoyPopstar.prototype.cizzurp = cizzurp;
jbiebs.cizzurp(20);
