
//////////////////////// a simple function /////////////////////////////

var isPalindrome = function(word) {

 for (i = 0; i < word.length/2; i++){
    char1 = word[i];
    char2 = word[(word.length-1)-i];

    if (char1 != char2){
      return false;
    }
  }
  return true;

}

var word = "radar";
console.log(isPalindrome(word));


//////////////////////// with Constructor and Prototype /////////////////////////////

function Word(word){
  this.word = word;
};

Word.prototype = {
  isPalindrome: function(){
    for (i = 0; i < this.word.length/2; i++){
      char1 = this.word[i];
      char2 = this.word[(this.word.length-1)-i];

      if (char1 != char2){
        return false;
      }
    }
    return true;
  }
};

var word = new Word("otto");
word.isPalindrome();


//////////////////////// with Constructor and Prototype /////////////////////////////
//// not working ... ? ////

// var isPalindrome = function(word) {

//  for (i = 0; i < word.length/2; i++){
//     char1 = word[i];
//     char2 = word[(word.length-1)-i];

//     if (char1 != char2){
//       return false;
//     }
//   }
//   return true;

// };

// String.prototype.isPalindrome = function(){
//   return isPalindrome(this):
// };


// "maddam".isPalindrome();


/////////////////// recursive Version //////////////////////////////////


// .... 





