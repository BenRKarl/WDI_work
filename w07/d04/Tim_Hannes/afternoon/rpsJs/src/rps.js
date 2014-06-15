function shoot(moveA, moveB){
  var winningRules = {
    'rock': 'scissors',
    'paper': 'rock',
    'scissors': 'paper'
  }
  if(winningRules[moveA] == moveB){
    return moveA;
  }
  if(winningRules[moveB] == moveA){
    return moveB;
  }
  return false;
}

// function computerChooses() {
//   var randNumber = Math.floor(Math.random() * 3);
//   var rps = {0: 'rock', 1: 'paper', 2: 'scissors'};
//   return rps[randNumber];
// }
