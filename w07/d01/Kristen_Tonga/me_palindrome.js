// THE STACKOVERFLOW SOLUTION

function isPalindrome(string){
  var len = string.length
  for (var i = 0; i < Math.floor(len/2); i++){
    if (string[i] !== string[len - 1 - i]) {
      return false;
    }
  }
  return true;
}


// MINE

function isPalindrome(string){
  for(var index=0; index < Math.floor(string.length / 2); index ++){
    if (string[index] !== string[ string.length - 1 - index ]){
      return false;
    }
  }
  return true;
}

// MATTS

var isPalindrome2 = function(str){
  for (var i = 0, var j = string.length-1; i < Math.floor(string.length/2); i ++, j --){
    if (string[i] != string[j]){
      return false;
    }
  }
  return true;
}

// OR

String.prototype.isPalindrome = function(){
  return isPalindrome(this);
}



// MY ATTEMPTS before GOOGLE

function isPalindrome(string){
  for(var index=0; index < string.length; index ++){
    string[index] == (var index=(string.length)-1; index --)

  }
}

function isPalindrome(string){
  var front = string.substr(0[, length]);
  var back = string.substr(-1[, length]);
  for(var index=0; index < front.length; index ++){

  }
}

  string.startsWith(searchString[, position])

for each letter in string
  letter[0++] == letter[length-1--1]
}
