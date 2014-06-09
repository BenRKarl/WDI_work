// function Player



function beats(moveA, moveB){
  var rules = {
    'rock'    : 'sissors',
    'paper'   : 'rock',
    'sissors' : 'paper'
  }

  if (rules[moveA] === moveB) && (player[1].score < 3) {

          // playerAscore =+1;
          // playerBscore = 0;
          return true;

  } if (rules[moveB] === moveA) && (player[2].score < 3){

          // playerAscore =+1;
          // playerBscore = 0;
          return false;

  } else {

          // playerAscore = 0;
          // playerAscore = 0;
          return undefined;

  }

  // if (playerA.score === 3 || playerB === 3
  //     // winner = player with score of 3
  //     // displays alert = winner + 'wins'
  // })

   // tie...


}


