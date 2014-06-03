var words = ["geography", "cat", "yesterday", "java", "truck", "opportunity",
             "fish", "token", "transportation", "bottom", "apple", "cake",
             "remote", "boots", "terminology", "arm", "cranberry", "tool",
             "caterpillar", "spoon", "watermelon", "laptop", "toe", "toad",
             "fundamental", "capitol", "garbage", "anticipate", "pesky"];

function HangGame() {
  this.secretWord = undefined;
  this.wrongGuess = 0;
}


HangGame.prototype = {  
  start: function() {
    var rand = Math.floor(Math.random() * words.length);
    var secretWord = words[rand];  
    this.secretWord = secretWord;
  },

  visualize: function() {
    for (var i = 0; i < this.secretWord.length; i++) {
      var blank = $('<li>').html('&nbsp;&nbsp;');
      $('#placeholder').append(blank);       
    }
  },
  
  guess: function(letter) {
    var foundOne = false;
    for (var i = 0; i < this.secretWord.length; i++) {
      if (letter === this.secretWord[i]) {
        foundOne = true;
        $('#placeholder').children()[i].innerHTML = letter.toUpperCase();
      }
    }      
    if (foundOne === false) {
      this.wrongGuess += + 1;
      $('#response').append(letter.toUpperCase() + ' is not in the word. '); 
      $('#wrong-count').html(this.wrongGuess);      
    }  
    if (this.wrongGuess === 8) {
      $('#response').html('Game over.');
      this.giveUp();
      setTimeout(function() {
        location.reload()}, 4000);
    }
  },

  validate: function(letterInput) {
    var input = /^[A-Za-z]+$/;
    if (!input.test(letterInput)) {
      $('#response').append('Input must be letters. ');
    }
  },

  hint: function() {
    var i = Math.floor(Math.random() * this.secretWord.length)
    $('#placeholder').children()[i].innerHTML = this.secretWord[i].toUpperCase(); 
  },

  giveUp: function() {
    for (var i = 0; i < this.secretWord.length; i++) {
      $('#placeholder').children()[i].innerHTML = this.secretWord[i].toUpperCase();    
    } 
  }
};


$(function() {
  var game = new HangGame();
  game.start();
  $('#letter-count').html(game.secretWord.length);
  game.visualize();

  $('#guess-submit').on('click', function(e) {
    e.preventDefault();
    var letterInput = $('#letter-input').val();
    game.validate(letterInput);
    game.guess(letterInput);
  });

  $('#hint').on('click', function(e) {
    game.hint();
  });

  $('#give-up').on('click', function(e) {
    game.giveUp();
  });

  $('#new-game').on('click', function(e) {
    location.reload();
  });
})  

