function BoyPopStar (name, haircut){
  this.name     = name;
  this.haircut  = haircut;
  this.moves    = [];
  }

BoyPopStar.prototype.learnMoves = function(move){
  tthismoves.push(move);
  return this.moves;
}





function cizzurp(n) {
  var strig = ""
  for (var i = 1; i <= n; i++) {
    if (i % 3 == 0) {
       string += 'cizz';
   } 
   if (i % 5 == 0)
       string += 'urp';
   } 
  //  if str = "";
  //     string += i;
  //   }
  // }
  console.log(string || i);
}



function cizzurpTerniary(n){
  (var i=1; i<=100; console.log((i%3?'':'Fizz')+(i%5?'':'Buzz')||i), i++);
}