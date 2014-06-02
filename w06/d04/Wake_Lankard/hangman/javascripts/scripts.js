var hangmanApp = {
  Word: function(word){
    this.word = word;
    this.wordArray = word.split('');
    this.failCount = 0;
    this.successCount = 0;
    this.gameOver = false;
    this.failArr = "YOUSUCK!".split('');

  },

  pickWord: function(){
    var list = ["never","going","give","you","up","let","down","run","around","desert"];
    var i = Math.floor(Math.random() * list.length);
    var word = new this.Word(list[i]);


    return word;
  },

  showBlanks: function(word){
    for(var i = 0; i < word.wordArray.length; ++i){
      var blank = $('<span>').html('__ ');
      blank.attr('id', 'index_' + i);
      $('#blanks').append(blank);
    }
  },
  evaluateGuess: function(word){
    var inputField = $('#guess_input');
    var guess = inputField.val();
    var correctGuess = false;

    for (var i = 0; i < word.wordArray.length; ++i){
      if(guess == word.wordArray[i]){
        $('#index_' + i).html(word.wordArray[i]);
        correctGuess = true;
      }
    }
    if (correctGuess)
    {
        word.successCount += 1;
     }
     else{
        word.failCount +=1;
        var newPenalty = $('<span>').html(word.failArr[word.failCount-1]);
        $('#fails').append(newPenalty);
    }
    inputField.val('');
    hangmanApp.gameOverCheck(word);
    return false;
  },
  gameOverCheck: function(word){
    if (word.successCount == word.wordArray.length){
      word.gameOver = true;
    
      var youWon = $('<span>').html("You Won!");
      youWon.attr('class','you_won');
      $('#game_status').append(youWon);
    }
    else if(word.failCount == word.failArr.length){
        word.gameOver = true;

      }
    if(word.gameOver == true){
      $('#guess').remove();
      for (var i = 0; i < word.wordArray.length; ++i){
        $('#index_' + i).html(word.wordArray[i]);
      }
    
    }
  }


    // $('#index_' + index).html(word.wordArray[index]);
    
  

};

hangmanApp.Word.prototype =function(){



};

$(function(){
  var word = hangmanApp.pickWord();
  hangmanApp.showBlanks(word);

    $('#guess').on('submit',function(){ return hangmanApp.evaluateGuess(word);});
  
});
