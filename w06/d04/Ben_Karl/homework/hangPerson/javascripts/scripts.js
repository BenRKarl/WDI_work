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
  this.el = $('<div class="num-tries">').html("Remaining Tries: " + this.tries);
}

function checkGuess(){
  var guess = $('.guess-field').val();
  var word = hangWord.word
  return word.indexOf(guess)
}

function makeBlack(elem){
  elem.css('color', 'black');
}

function guessIncrementer(GuessCounter){
  var guess = $('.guess-field').val();
  var guessField = $('.field-and-tries');
  var wordDiv = $('.word-div');
  if (checkGuess() >= 0){

    updateWordColor(wordDiv, guess)

  } else {
    newGuessCounter.tries--;
    $('.num-tries').html("Remaining Tries: " + newGuessCounter.tries);
  }
}

function updateWordColor(div, guess){
  for (var i = 0; i > div.children().length; i++){
    if (div.children().eq(i).text() === guess) {
      div.children().eq(i).css('color', 'black');
    }
  }
  $('.hang-word-container').html(hangWord.render().el);
}

HangWord.prototype.render = function(){
  var divEl = $('<div class="word-div">');
  for (var i = 0; i < this.word.length; i++){
    var pEl = $('<p>');
    pEl.html(this.word[i]);
    divEl.append(pEl);
  }
  this.el = divEl;
  return this;
}

function hangPerson(){
  //whoa there's a global variable here, things are getting weird!
  hangWord = new HangWord();
  newGuessCounter = new GuessCounter();

  var wordContainer = $('.hang-word-container');
  var guessAndTriesDiv = $('.field-and-tries');
  var hangEl = hangWord.render().el;

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
  $('.start-button').on('click', hangPerson);
  $('.field-and-tries').on('click', '.guess-button', guessIncrementer);
});
