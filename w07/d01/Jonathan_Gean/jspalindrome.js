function isPalindrome(string){
  if (string == string.split('').reverse().join('')) {
        return true;
    }
    return false;
    }


String.prototype.isPalindrome = function(){
    return isPalindrome(this);
}

