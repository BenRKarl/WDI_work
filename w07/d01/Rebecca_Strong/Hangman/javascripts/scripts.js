var hangMan function(){
  //the game is a global loop of turn methods thru 8
  for (var i = 0; i <= 8; i++);
    //on each turn text += "Take a Guess" + "<br>" via submit button or "I give up" button w/ innerHTML.newWord;
    //on 9 there is a text += "Game Over" + "<br>" via reset button;


var words function(){

  //This is an object array of words;
  words = ["pickle", "knish", "gefilte", "brisket", "lox"];
},

var selectWord function() {
// creator function  calls .random and creates newWord object string;

// MISSING step in logic - to get each letter in newWord represented by "_" on screen;
},

var guessWord function() {
// calls .search to see if letter is included in word and determine index(indices);

//IF letter included, calls .charAt() to summon located index(indices) of letter in the string;


//ELSE  returns null and player returns to global "Take a Guess" loop;



// IF all letters are present calls .toString() to return and reveal the complete word and text +="You Win!"(incl.reset button);
//else DEFAULT returns to global "Take a Guess" loop;

}

}


