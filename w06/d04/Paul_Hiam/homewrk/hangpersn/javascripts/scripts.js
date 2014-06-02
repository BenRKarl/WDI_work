// the game = function
function hangman(word) {
  //seperate letters in answer into array
  var letters = word.split('');
  //make a guesses array
  var guessed = []
  //find the guessed letter
  var guess = ?;
  //define the show correct guess function
  //

  //search a guess in letters, add to guessed if no match or do correct function
  for (var i in letters){
    if (i == guess){

    }

  }


}

//game will begin with random word from list
$(document).ready(function() {
  var wordz = ['hose', 'cupboard','opposite','monkey','popsicle','temporary','elemental','governess','stepladder']
  var sample = Math.floor(Math.random() * wordz.length);
  var word = wordz[sample]

  $('#button').click(function() {
    hangman(word);
  });
});