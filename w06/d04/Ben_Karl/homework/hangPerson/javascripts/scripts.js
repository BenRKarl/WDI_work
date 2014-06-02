var wordArray = ['car', 'tree', 'drain', 'winter', 'vent', 'spray', 'left'];

function selectWord(wordArray){
  return wordArray[Math.floor(Math.random() * wordArray.length)];
}

function HangWord(){
  this.word = selectWord(wordArray);
  this.el = undefined;
}

function GuessCounter(){
  this.tries = 8;
  this.el = $('<div>').html("Remaining Tries: " + this.tries);
}

function checkGuess(){
  var guess = 3;
}

function guessIncrementer(GuessCounter){
  if (false){
    ///something for correct guess
  } else {
    GuessCounter.tries--;
  }
  return this;
}

// function changeColor(className){
//   className.
// }

HangWord.prototype.render = function(){
  var divEl = $('<div id="word-div">');
  for (var i = 0; i < this.word.length; i++){
    var pEl = $('<p>');
    pEl.html(this.word[i]);
    divEl.append(pEl);
  }

  this.el = divEl;
  return this;
}

function hangPerson(){
  var wordContainer = $('#hang-word-container');
  var guessAndTriesDiv = $('#field-and-tries');

  var hangWord = new HangWord();
  var hangEl = hangWord.render().el;

  var newGuessCounter = new GuessCounter();

  var guessField = $('<input class="guess-field">');
  guessField.attr('placeholder', 'Enter a letter');
  var guessButton = $('<button class="guess-button">');
  guessButton.html("Guess");

  wordContainer.append(hangEl);
  guessAndTriesDiv.append(newGuessCounter.el);
  guessAndTriesDiv.append(guessField);
  guessAndTriesDiv.append(guessButton);
}

$(function(){
  $('#start-button').on('click', hangPerson)
  $('#guess-button').on('click', checkGuess)
});
