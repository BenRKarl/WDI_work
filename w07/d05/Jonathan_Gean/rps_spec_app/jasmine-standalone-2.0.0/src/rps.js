playerAscore = 0;
playerBscore = 0;

function beats(playerAmove, playerBmove){
  var rules = {
    'rock' : 'scissors',
    'scissors' : 'paper',
    'paper' : 'rock'
  };

  if (rules[playerAmove] === playerBmove){

    playerAscore += 1;
    playerBscore = 0;
    return true
    if (playerAscore === 3){
      return 'player one wins';
    }
  } else if (rules[playerBmove] === playerAmove){
    playerBscore += 1;
    playerAscore = 0;
    return false
    if (playerBscore === 3){
      return 'player two wins';
    }
  } else {
    playerBscore = 0;
    playerAscore = 0;
  }
}
