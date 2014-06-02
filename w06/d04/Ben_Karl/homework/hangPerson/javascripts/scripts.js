var wordArray = ['car', 'tree', 'drain', 'winter', 'vent', 'spray', 'left'];

function selectWord(wordArray){
  return wordArray[Math.floor(Math.random() * wordArray.length)];
}

function HangWord(){
  this.word = selectWord(wordArray);
  this.el = undefined;
}

HangWord.prototype.render = function(){
  var pEl = $('<p>').html(this.word);
  this.el = pEl;
  return this;
}

function hangPerson(){
  var wordContainer = $('#hang-word-container');
  var hangWord = new HangWord();
  var hangEl = hangWord.render().el;

  if (wordContainer.children().length > 0){
    wordContainer.removeChild(wordContainer.firstElementChild);
  }

  wordContainer.append(hangEl);
}

$(function(){
  $('#start-button').on('click', hangPerson)
});
