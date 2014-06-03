function isPalindrome(string) {
  var reverse = '';
  for (var j = string.length - 1; j > -1; j--) {
    reverse = reverse + string[j];
  }

  if (string === reverse) {
    return true;
  } else {
    return false;
  }
};

console.log(isPalindrome('string'));
console.log(isPalindrome('58 85'));


String.prototype.isPalindrome = function() {
  var reverse = '';
  for (var j = this.length - 1; j > -1; j--) {
    reverse = reverse + this[j];
  }  

  if (this.toString() === reverse) {
    return true;
  } else {
    return false;
  }
};

console.log('85 58'.isPalindrome());
console.log('maxim'.isPalindrome());


// var i = 0;
// var j = string.length - 1;
// while (i <= j) {
//   if string[i] != string[j] {
//     return false;
//   }
//   i++;
//   j--;
// }
// return true;
