var userScore = 0;
var computerScore = 0;
while(true) {
  var userChoice = prompt("Would you like to choose rock, paper, or scissors?");

  var computerChoice = Math.random();
  if (computerChoice < 0.34){
    computerChoice = "rock";
  } else if (computerChoice <= 0.67){
    computerChoice = "paper";
  } else {
    computerChoice = "scissors";
  }

  function compare(userChoice, computerChoice){
    if(userChoice===computerChoice){
      return('Its a tie! Try again.');
    }

    if(userChoice==="rock"){
      if(computerChoice==="scissors"){
        userScore++;
        return ('rock wins!');
      }else{
        computerScore++;
        return ('paper wins');
      }
  }

    if(userChoice==="paper"){
      if(computerChoice==="rock"){
        userScore++;
        return('paper wins!');
      }else{
        computerScore++;
        return('scissors wins!');
      }
    }

     if(userChoice==="scissors"){
      if(computerChoice==="rock"){
        computerScore++;
        return('rock wins!');
      }else{
        userScore++;
        return('scissors wins!');
      }
    }
  }

  if(userScore >= 3){
    console.log("YOU HAVE WON!")
  }
  else if(computerScore >= 3){
    console.log("YOU HAVE LOST!")
  }
  else{
    console.log("Enjoy the game!")
};

  console.log(userChoice);
  console.log(computerChoice);
  console.log(compare(userChoice, computerChoice));
  console.log("Current score: User - " + userScore +
    ", Computer - " + computerScore);

  var playAgain = prompt("Type quit to stop playing, or anything else to play again");
  if (playAgain == "quit") { break; }
}

// var userChoice = prompt("Would you like to choose rock, paper, or scissors?");

// var computerChoice = Math.random();
// if (computerChoice < 0.34){
//   computerChoice = "rock";
// } else if (computerChoice <= 0.67){
//   computerChoice = "paper";
// } else {
//   computerChoice = "scissors";
// }

// choice1 = userChoice;
// choice2 = computerChoice;

// function compare(choice1, choice2){
//   if(choice1===choice2){
//     return('Its a tie! Try again.');
//   }

//   if(choice1==="rock"){
//     if(choice2==="scissors"){
//       return ('rock wins!');
//     }else{
//       return ('paper wins');
//     }
// }

//   if(choice1==="paper"){
//     if(choice2==="rock"){
//       return('paper wins!');
//     }else{
//       return('scissors wins!');
//     }
//   }

//    if(choice1==="scissors"){
//     if(choice2==="rock"){
//       return('rock wins!');
//     }else{
//       return('paper wins!');
//     }
//   }
// }

// console.log('Your choice: ' +userChoice);
// console.log('Computer choice: ' +computerChoice);
// console.log(compare(choice1, choice2));
// console.log("Current score: User => " + userScore +
//     ", Computer => " + computerScore);
// }
