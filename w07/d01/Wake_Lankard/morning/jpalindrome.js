function isPalindrome(string1){
  var string1Arr = string1.split('');
  var string2Arr = [];
  var string2 = "";

  var x = string1Arr.length-1;
  for(var i = 0; i < string1Arr.length; ++i){
    string2Arr[x] = string1Arr[i];
    x = x - 1;
  }
  
  string2 = string2Arr.join("");

  if (string1 == string2){
    return true;
  }
  else{
    return false;
  }

}

String.prototype.isPalindrome = function(){
    var string1 = this
    var string1Arr = string1.split('');
  var string2Arr = [];
  var string2 = "";

  var x = string1Arr.length-1;
  for(var i = 0; i < string1Arr.length; ++i){
    string2Arr[x] = string1Arr[i];
    x = x - 1;
  }
  
  string2 = string2Arr.join("");

  if (string1 == string2){
    return true;
  }
  else{
    return false;
  }



}




