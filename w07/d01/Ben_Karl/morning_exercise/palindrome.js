  function isPalindrome(string){
    for (var i = 1; i <= string.length; i++){
      if (string[i - 1] != string[string.length - i]){
        return false;
      }
    }
    return true;
  }

  String.prototype.isPalindrome = function(){
    for (var i = 1; i <= this.length; i++){
      if (this[i - 1] != this[this.length - i]){
        return false;
      }
    }
    return true;
  };
