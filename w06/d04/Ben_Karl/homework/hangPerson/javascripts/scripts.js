var wordArray = ['car', 'tree', 'drain', 'winter', 'vent', 'spray', 'left', 'sun', 'jupiter', 'oxygen', 'beer', 'stick', 'cars', 'pole'];

function selectWord(wordArray){
  return wordArray[Math.floor(Math.random() * wordArray.length)];
}

function HangWord(){
  this.word = selectWord(wordArray);
  this.el = undefined;
}

function GuessCounter(){
  this.tries = 0;
  this.el = $('<img class="hang-image" src="images/8_tries.jpeg">');
}

function checkGuess(){
  var guess = $('.guess-field').val();
  var word = hangWord.word
  return word.indexOf(guess)
}

function makeBlack(elem){
  elem.css('color', 'black');
}

function guessIncrementer(){
  var guess = $('.guess-field').val();
  var guessField = $('.field-and-tries');
  var wordDiv = $('.word-div');
  var hangImageArray = [
    "images/7_tries.jpeg",
    "images/6_tries.jpeg",
    "images/5_tries.jpeg",
    "images/4_tries.jpeg",
    "images/3_tries.jpeg",
    "images/2_tries.jpeg",
    "images/1_tries.jpeg",
    "images/0_tries.jpeg",
  ];

  if (checkGuess() >= 0){

    updateWordColor(wordDiv, guess)

  } else {
    newGuessCounter.tries++;
    $('.hang-image').attr('src', hangImageArray[newGuessCounter.tries]);
  }
}

function updateWordColor(div, guess){
  for (var i = 0; i < div.children().length; i++){
    if (div.children().eq(i).text() === guess) {
      div.children().eq(i).css('color', 'black');
    }
  }
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
  guessAndTriesDiv.append('</br>');
  guessAndTriesDiv.append(guessField);
  guessAndTriesDiv.append(guessButton);
}

$(function(){
  $('.start-button').on('click', hangPerson);
  $('.field-and-tries').on('click', '.guess-button', guessIncrementer);
});
