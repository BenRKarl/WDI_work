var wordList = ["banana", "chevrolet", "beaches", "blueberries", "pigeons", "stairwell", "trees", "bacon", "tuesday", "movie", "clocks", "clouds", "sunrise", "sunday", "halloween", "pickle"]

// The game selects a random word from a word list and makes that the secret word
// The player guesses one letter at a time, trying to figure out what the word is
// If the player guesses correctly, any instances of that letter are revealed in the secret word
// If the player guesses incorrectly, they are penalized by taking away a guess
// If a player reveals all of the letters of the secret word, they win
// If a player makes 8 incorrect guesses before solving the secret word, they lose
// var guess=prompt("Please guess the number");

// if (guess == 5) {
//   console.log("Correct!");
// }
// else {
//   console.log("Nope.");
// }


function hangPersonGame(randomWord) {
  this.randomWord = randomWord;
}

hangPersonGame.prototype = {

  begin: function() {
    var incorrectGuesses = 8;

    for (var i = 0; i < this.randomWord.length; i++) {
    var guess=prompt("The secret word is " + this.randomWord.length + " letters long. Guess letter "+ (i+1));
    if (guess != this.randomWord[i]) {
      console.log("That's incorrect. You have " + incorrectGuesses + " wrong guesses left.");
      i--;
      incorrectGuesses--;
      if (incorrectGuesses < 0) {
        console.log("Sorry, you've run out of guesses. The secret word is " + this.randomWord + ".");
        break;
      }
      }
    else {
      console.log("Correct! Letter "+ (i+1) + " is " + this.randomWord[i] + ".");
      if ((i+1) == this.randomWord.length) {
        console.log("You guessed the word correctly - " + this.randomWord);
        break;
        }
      }
    }
  }

};

$(function(){
$('#begin').on('click', function(){
    var newGame = new hangPersonGame(wordList[Math.floor((Math.random())*wordList.length)]);
    newGame.begin();
});
})



