function isPalindrome(string){
  var len = string.length;
  for ( var i = 0; i < Math.floor(len/2); i++ ) {
    if (str[i] === str[len - 1 - i]) {
      return true;
    }
  }
  return false;
};

string.prototype function(){
  isPalindrome();
}
