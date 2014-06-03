function isPalindrome(string) {
  var arr1 = string.split("");
  var arr2 = [];
  for (var i = arr1.length - 1; i >= 0; i--) {
    arr2.push(arr1[i]);
  }
  if (arr2.reverse().join("") === string) {
    return true;
  } else {
    return false;
  }
}

var isPalindrome2 = function(string) {
  var i = 0;
  var j = string.length -1;
  while (i <= j) {
    if (string[i] != string[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true
}

var isPalindrome3 = function(string) {
  for (var = i, j = string.length -1; i < string.length/2; i++, j--) {
    if (string[i] != string[j]) {
      return false;
    }
  }
  return true;
}

String.prototype.isPalindrome = function() {
  return isPalindrome(this);
}
