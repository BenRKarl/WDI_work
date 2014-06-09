  function BoyPopStar(name, haircut){
  this.name     = name;
  this.haircut  = haircut;
  this.moves    = [];
}


BoyPopStar.prototype.learnMoves = function(move){
  this.moves.push(move);
  return this.moves;
}

var bieber = new BoyPopStar('Justin Bieber', 'stolen from tom brady')

function cizzurp(n){
  for (var i = 1; i <= n; i++)
  {
    if (i % 15 == 0)
      console.log('cizzurp');
    else if (i % 5 == 0)
      console.log('urp');
    else if (i % 3 == 0)
      console.log('cizz');
    else
      console.log(i);
  }
}
// Matt solution

function cizzurp(n){
  for (var i = 1; i <= n; i++){
    var string = ""
    if (i % 3 == 0){
      string += "cizz";
    }
    if (i % 5 == 0){
      string += "urp";
    }
    // if (string === ""){
    //   string += i;
    // }
    console.log(string || i)
  }
}

