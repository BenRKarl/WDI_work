var wordList = ["banana", "chevrolet", "beaches", "blueberries", "pigeons", "stairwell", "trees", "bacon", "tuesday", "movie", "clocks", "clouds", "sunrise", "sunday", "halloween", "pickle"]

String.prototype.replaceAt=function(index, character) {
    return this.substr(0, index) + character + this.substr(index+character.length);
}


function hangPersonGame(randomWord) {
  this.randomWord = randomWord;
}

hangPersonGame.prototype = {

  begin: function() {

    var arr = [];
    for (var z = 0; z < this.randomWord.length; z++) {
      arr.push("X");
    }

    var secret = arr.join("");
    $('#secret-word').html(secret);
    var incorrectGuesses = 8;
    var guessArray = [];

    for (var i = 0; i < this.randomWord.length; i++) {
    var guess=prompt("The secret word is " + this.randomWord.length + " letters long. Guess letter "+ (i+1)+"." + " You have " + incorrectGuesses + " incorrect guesses remaining.");

    guessArray.push(guess);
    $('#guessed-letters').html(guessArray.join(""));

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
      secret = secret.replaceAt(i, this.randomWord[i]);
      $('#secret-word').html(secret);
      if ((i+1) == this.randomWord.length) {
        console.log("You guessed the word correctly - " + this.randomWord);
        break;
        }
      }
    }
      $(function(){
      $('#giveup').on('click', function(){
        $('#secret-word').html(this.randomWord);
    });
  })
  }
};

$(function(){
  $('#begin').on('click', function(){
    var newGame = new hangPersonGame(wordList[Math.floor((Math.random())*wordList.length)]);
    newGame.begin();
});
})





