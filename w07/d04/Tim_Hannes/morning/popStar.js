// Create a BoyPopStar constructor in Javascript.
// It should take in a name and haircut when the constructor function is called and set those attributes on the generated object.
// The constructor should also have a learnMoves function that accepts a new dance move and stores it in an array assigned to the objects moves attribute.

function BoyPopStar(name, haircut){
  this.name = name;
  this.haircut = haircut;
  this.moves = [];
}

BoyPopStar.prototype.learnMoves = function(move){
  this.moves.push(move);
  return this.moves;
}

// Write a cizzurp function that takes an argument n
// It should iterates through all numbers from 1 to n, printing one of the following strings:
// If the number is evenly divisible by 3, it should print cizz.
// If the number is evenly divisibly by 5, it should print urp.
// If the number is evenly divisibly by 3 and 5, it should print cizzurp.
// Otherwise, it should just print the number.

//my way...doesn't work
function cizzurp(n){
  for(i = 1; i < n; i++){
    if(n % 3 === 0)
      console.log("cizz");
    else if (n % 5 === 0)
      console.log("urp");
    else if (n % 3 === 0 && n % 5 = 0)
      console.log("cizzurp");
    else
      console.log(n);
  }
}

// BoyPopStar.prototype.cizzurp = function cizzurp(n)

//Matt's way
function cizzurp(n){
  for (var i = 1; i <= n; i++){
    var str = "";
    if (i % 3 === 0){
      str += "cizz";
    }
    if (i % 5 === 0){
      str += "urp";
    }
    console.log(str || i);
  }
}


function cizzurpTerniary(n){
  for(var i=1; i<=100; console.log((i%3?'':'Fizz')+(i%5?'':'Buzz')||i), i++);
}
