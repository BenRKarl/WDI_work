function palindrome(string) {
  for (var i = string.length - 1; i >= 0; i--) {
    var result1 = string[i];
    // console.log(result1);
  }
  for (var i = 0; i < string.length; i++) {
    var result2 = string[i];
    // console.log(result2);
  }
  if (result1 === result2) {
    return true;
  }
  else {
    return false;
  }
}

//another way

var palindrome = function(string) {
  var i = 0;
  var j = string.length - 1;
  while (i <= j) {
    if (string[i] != string[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

// another way

var palindrome = function(string) {
  for (var i = 0, j = string.length - 1; i < string.length/2; i++, j--) {
    if (string[i] != string[j]) {
      return false;
    }
  };
  return true;
}

