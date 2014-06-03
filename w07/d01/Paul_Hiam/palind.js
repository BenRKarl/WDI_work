var isPalindrome = function(str){
  var i = 0;
  var j = str.length-1;
  while (i <= j){
    if (str[i] != str[j]){
    }
    i++;
    j--;
  }
  return true;
};

String.prototype.isPalindrome = function(){
  return isPalindrome(this);
};





//solution 2
var isPalindrome2 = function(str){
  for (var i = 0, var j = string.length-1; i < string.length/2; i++, j--){
    if (string[1] != string[j]){
      return false;
    }
  }
  return true;
}