function BoyPopStar(name, haircut){
  this.name = name
  this.haircut = haircut
  this.moves = []
}

BoyPopStar.prototype = {
  learnMoves: function(newMove){
    this.moves.push(newMove)
    return this
  }
}

// function cizzurp(n){
//   for (var i = 1; i <= n; i++) {
//     if ((i % 3 == 0) && (i % 5) == 0) {
//       console.log('cizzurp')
//     } else if (i % 3 == 0) {
//       console.log('cizz')
//     } else if (i % 5 == 0) {
//       console.log('urp')
//     } else {console.log(i)}
//   }
// }

function cizzurp(n){
  for (var i = 1; i <= n; i++) {
    var output = ''
    if (i % 3 == 0) {
      output += "cizz"
    }
    if (i % 5 == 0) {
      output += "urp"
    }
    console.log(output || i)
  }
}

BoyPopStar.prototype.cizzurp = cizzurp

bart = new BoyPopStar('Bart', 'Zigzag')
