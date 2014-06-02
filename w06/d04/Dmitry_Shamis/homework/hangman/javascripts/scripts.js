var hangman = {
  startGame: function () {
    var randomWord = wordList[(Math.floor(Math.random() * wordList.length))]
    $('.word').append(randomWord);
    var instructionsEl = $('<h3>').html("Type a letter and get going...");
    var guessInputEl = $('<input>').addClass('guess-input');
    var guessSubmitEl = $('<button>').addClass('guess-submit').html("Submit Guess");
    var resetEl = $('<button>').addClass('reset').html("Reset");
    var giveUpEl = $('<button>').addClass('give-up').html("Give Up");
    $('.game-window').append(instructionsEl).append(guessInputEl).append(guessSubmitEl).append(resetEl).append(giveUpEl);
  }
}

var wordList = ["amused", "beaming", "blissful", "blithe", "buoyant", "carefree", "cheerful", "cheery", "content", "contented",
"delighted", "ecstatic", "elated", "enraptured", "euphoric", "exhilarated", "excited", "exultant", "glad", "gleeful", "gratified",
"grinning", "jolly", "jovial", "joyful", "joyous", "jubilant", "lighthearted", "merry", "overjoyed", "pleased", "radiant", "rapturous",
"satisfied", "smiling", "sunny", "thrilled", "untroubled"]

$(function () {
  $('.play').one('click', function () {
    return hangman.startGame();
  });

  $('.guess-submit').on('click', function () {
    var guess = $('.guess-input').val();
    var word = $('.word').text();
    var letters = word.split("");
    for (i = 0; i < word.length; i++)
      if (word.indexOf(guess) == word[i]) {
        word[i].css('color', 'red');
      }
    });

  $('.reset').on('click', function () {
    $('.game-window').html("");
    return hangman.startGame();
  });

  $('.give-up').on('click', function () {
    // Show full word
  })
});

