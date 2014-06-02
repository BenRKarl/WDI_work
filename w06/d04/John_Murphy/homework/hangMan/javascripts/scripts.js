// ###Hangperson Game
// - **The Game**
//   - The game selects a random word from a word list and makes that the secret word
//   - The player guesses one letter at a time, trying to figure out what the word is
//   - If the player guesses correctly, any instances of that letter are revealed in the secret word
//   - If the player guesses incorrectly, they are penalized by taking away a guess
//   - If a player reveals all of the letters of the secret word, they win
//   - If a player makes 8 incorrect guesses before solving the secret word, they lose
// - **To Do**
//   - Plan out your object model. What variables and functions will each object have? How will the different objects communicate with each other?
//   - Get the logic to work and make sure you have the game working in the console first **BEFORE** translating it over to update the DOM.
//   - Translate your game over so it updates the DOM.
//     - Implement a "reset" button that will reset the game and choose a new word
//       - Implement a "give up" button that will show the solution
//   - Validate the input so that only single letters are accepted as guesses
// - **Bonus**
//   - Change the input format so that there is no text field. You can get input by "listening" to the keyup event and figuring out which key was pressed.
// - **Bonus**
//   - Draw the hangperson stick figure using CSS
//   - Implement a "hint" button that will reveal one of the letters in the word

// ---

function letterCheck(input){
  return input.split('').length == 1 && jQuery.inArray(input, ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']) > -1
}


hangmanWords = ['happy', 'sad', 'crotchety']

function SecretWord(){
  this.word = hangmanWords[Math.floor(Math.random() * hangmanWords.length)];
  this.guesses = []
  this.correctGuesses = []
}

SecretWord.prototype = {

  include: function(letter){
    for (var i = 0; i < (this.word.length); i++) {
      if (letter == this.word[i]) return true
    }
    return false
  },

  victory: function() {
    for (var i = 0; i < (this.word.length); i++) {
      if (jQuery.inArray(this.word.split('')[i], this.correctGuesses) < 0) {return false};
    }
    return true
  },

  guess: function(letter){
    if (this.include(letter)) {
      this.guesses.push(letter)
      this.correctGuesses.push(letter)
    }  else {
      this.guesses.push(letter)
    }

    if (this.numberGuesses() > 0 && this.victory() != true) {
    $('#correctLetters').html('Word: ' + this.output());
    $('#guessedLetters').html('Guessed: ' + this.guesses);
    $('#guessesLeft').html('Guesses Left: ' + secret.numberGuesses());
    } else if (this.numberGuesses() >= 0 && this.victory() == true) {
    $('#correctLetters').html('Word: ' + this.output());
    $('#guessedLetters').html('Guessed: ' + this.guesses);
    $('#guessesLeft').html('You win!');
    } else {
    $('#correctLetters').html('Word: ' + this.output());
    $('#guessedLetters').html('Guessed: ' + this.guesses);
    $('#guessesLeft').html('You lose! The word was: ' + this.word);
    }
  },

  guessCount: function(){
    return this.guesses.length
  },

  unique: function(array){
      var uniqueArray = array.filter(function(elem, pos){
        return array.indexOf(elem) == pos;
      });
    return uniqueArray
  },

  numberGuesses: function(){
    var uniqueGuesses = this.unique(this.guesses)
    var count = 0
    for (var i = 0; i < uniqueGuesses.length; i++) {
      if (this.include(uniqueGuesses[i]) == false) {
        count += 1;
      }
    }
    return 8 - count
  },

  output: function(){
    var output = []
        for (var i = 0; i < (this.word.length); i++){
          if (jQuery.inArray(this.word.split('')[i], this.correctGuesses) < 0) {output += '_ '
        } else {output += (this.word[i] + ' ')}
        }
    return output
  },

  reset: function(){
    this.word = hangmanWords[Math.floor(Math.random() * hangmanWords.length)];
    this.guesses = []
    this.correctGuesses = []
    $('#correctLetters').html('Word: ' + this.output());
    $('#guessedLetters').html('Guessed: ' + this.guesses);
    $('#guessesLeft').html('Guesses Left: ' + secret.numberGuesses());
  },

  fold: function(){
    $('#correctLetters').html('Word: ' + this.output());
    $('#guessedLetters').html('Guessed: ' + this.guesses);
    $('#guessesLeft').html("The word was: " + this.word + " ... don't cheat next time.");
  }
}


secret = new SecretWord()

$(function(){

  $('#guessButton').on('click', function() {
    if (letterCheck($('#guessLetter').val())) {
    secret.guess($('#guessLetter').val());
  } else {
    alert("Must input a lowercase letter");
  }
  })

  $('#resetButton').on('click', function() {
    secret.reset();
  })

  $('#foldButton').on('click', function() {
    secret.fold();
  })

  $('#correctLetters').html('Word: ' + secret.output());

  $('#guessedLetters').html('Guessed: ' + secret.guesses);
  $('#guessesLeft').html('Guesses Left: ' + secret.numberGuesses());


})

