function palindrome(word) {
  var newWord = word.replace(/ /g,'').toLowerCase()
  for (var i = 0; i < newWord.length; i++) {
    var lastIndex = newWord.length - 1 - i
    if (newWord[i] != newWord[lastIndex]) {
      return false
    }
  }
  return true
}

// var isPalindrome = function(string) {
//   var i = 0;
//   var j = string.length-1;
//   while (i <= j){
//     if (string[i] != string[j]) {
//       return false;
//     }
//     i++;
//     j--;
//   }
//   return true
// }

// var isPalindrome2 = function(string){
//   for (var i = 0, j = string.length-1; i < string.length/2; i++, j--){
//     if (string[i] != string[j]) {
//       return false;
//     }
//   }
//   return true
// }

// String.prototype.isPalindrome = function(){
//   var i = 0;
//   var j = this.length-1;
//   while (i <= j){
//     if (this[i] != this[j]) {
//       return false;
//     }
//     i++;
//     j--;
//   }
//   return true
// }
