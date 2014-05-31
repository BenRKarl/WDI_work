





var wordList = ['hello', 'goodbye', 'again'];
var alphaString = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var alphaArray = alphaString.split("");

function getWord() {
  return 'hello';
}



var game  = {
  initialize: function() {
    this.usedLetters = [];
    this.correctLetters = [];
    this.currGuess = [];
    this.currWord = getWord().split("");
    this.numGuesses = 0;
    this.gameStatus = 1;
  }

}


function reset() {
  game.initialize();
}

function updateWord() {
  $.each(game.currWord, function(index, value) {
    if ($.inArray(value, game.correctLetters) != -1) {
      game.currGuess[index] = value;
    } else {
      game.currGuess[index] = " ";
    }
  });
}

function testFullWord() {
  if (game.currGuess.join("") == game.currWord.join("")) {
    window.alert("You Win")
    game.gameStatus = 0;
  }
}



function receiveGuess(letter) {
  if ($.inArray(letter, game.usedLetters) == -1) {
    game.usedLetters.push(letter);
    if ($.inArray(letter, game.currWord) != -1) {
      game.correctLetters.push(letter);
      updateWord();
      testFullWord();
    } else {
      game.numGuesses += 1;
      if (game.numGuesses > 7) {
        game.gameStatus = 0;
        window.alert("Game Over");
      }
    }

  } else {
    window.alert('already tried that letter');
  }

}
