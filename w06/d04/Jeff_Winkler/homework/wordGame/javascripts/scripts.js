
var wordList = ['HELLO', 'GOODBYE'];
var alphaString = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var alphaArray = alphaString.split("");

function getWord() {
  numWords = wordList.length;
  randIndex = Math.floor(Math.random() * numWords);
  return wordList[randIndex];
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
  updateWord();
  renderString(alphaArray, '#alphabet-div');
  renderString(game.currGuess, '#word-div');
}

function updateWord() {
  $.each(game.currWord, function(index, value) {
    if ($.inArray(value, game.correctLetters) != -1) {
      game.currGuess[index] = value;
    } else {
      game.currGuess[index] = "?";
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
  letter = letter.toUpperCase();
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

function coolStrikethrough() {
  var alphabetDivs = $('#string-div').children();
  $.each(alphabetDivs, function(index, value) {
    currValue = value.innerHTML;
    if ($.inArray(currValue, game.usedLetters) != -1) {
      $(value).css('text-decoration', 'line-through');
    }
  });

}

function renderString(array, container) {
  $(container).children().first().remove();
  var tempContainer = $('<div>', {id: 'string-div'});
  $(container).append(tempContainer);
  $.each(array, function(index,value) {
    var letterDiv = $('<div>', {class: 'letter-div', html: value});
    if (container == '#word-div') {
      $(letterDiv).addClass("guess-div");
    }
    $(tempContainer).append(letterDiv);

  });
}

$(function() {
  reset();
})
