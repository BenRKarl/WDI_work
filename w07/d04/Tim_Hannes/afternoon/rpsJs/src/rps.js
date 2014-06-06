function shoot(moveA, moveB){
  var winningMove = {
    'rock': 'scissors',
    'paper': 'rock',
    'scissors': 'paper'
  }
  if(winningRules[moveA] == moveB) {
    return moveA;
  }
  if(winningRules[moveA] == moveB) {
    return moveB;
  }
  return false;
}
