function isPalindrome(string) {
  var arrz = [];
  for (var z = ((string.length)-1); z > -1; z--) {
    arrz.push(string[z]);
    }

    if (string == arrz.join("")) {
      return true;
    }
    else {
      return false;
    }
}


////////////
String.prototype.isPalindrome = function() {
  return isPalindrome(this);
};

