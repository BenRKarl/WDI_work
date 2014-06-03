//my attempt

function palindrome(string){
  string = string.replace(' ','');
  for (var i = string.length; i > 0; i--){ //iterate backwards
    if ( string[i] = string.charAt(string.length)-1){
      return true;
    } else {
      return false;
    }
  }
}

//for each character in string, iterate through word and tell me if
//the current character is equal to the character of palindrome's length -1
//if so return true, if not, false.


// matt's version
var isPalindrome = function(str){
  var i = 0;
  var j = str.length-1;
  while (i <= j){
    if (str[i] != str[j]){
      return false;
    }
    i++;
    j--;
  }
  return true;
}


//for loop version

var isPalindrome2 = function(string){
  for (var i = 0, j = string.length-1; i < string.length/2; i++, j--){
    if (string[i] != string[j]){
      return false;
    }
  }
  return true;
}
