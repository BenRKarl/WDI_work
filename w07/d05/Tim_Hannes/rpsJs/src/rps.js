var userChoice = prompt("Would you like to choose rock, paper, or scissors?");

var computerChoice = Math.random();
if (computerChoice < 0.34){
  computerChoice = "rock";
} else if (computerChoice <= 0.67){
  computerChoice = "paper";
} else {
  computerChoice = "scissors";
}

choice1 = userChoice;
choice2 = computerChoice;

function compare(choice1, choice2){
  if(choice1===choice2){
    return('Its a tie! Try again.');
  }

  if(choice1==="rock"){
    if(choice2==="scissors"){
      return ('rock wins!');
    }else{
      return ('paper wins');
    }
}

  if(choice1==="paper"){
    if(choice2==="rock"){
      return('paper wins!');
    }else{
      return('scissors wins!');
    }
  }

   if(choice1==="scissors"){
    if(choice2==="rock"){
      return('rock wins!');
    }else{
      return('paper wins!');
    }
  }
}

console.log(userChoice);
console.log(computerChoice);
console.log(compare(choice1, choice2));

