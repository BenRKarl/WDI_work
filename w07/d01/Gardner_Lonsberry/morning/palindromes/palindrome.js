  function isPalindrome(palindrome) {
    for( var i = palindrome.length; i > 0; i-- )
    {
        if(palindrome[i] = palindrome.charAt(palindrome.length)-1 )
        {
            console.log('the word is palindrome.');
        } else{
            console.log('the word is not palindrome!');
        }
    }
  }
  




  var isPalindrome = function(str){
    var i = 0;
    var j = str.length-1;
    while (i<= j){
      if (str[i] =str[j]{
        return false;
      }
      i++;
      j--;
    }
    return true;
  }

  var isPalinedrome2 = function(string) {
    for (var i = 0, j = string.length-1; i < string.length-1; i < string.length/2; i++, j--){
      if (string[i] != string[j]){
        return false;
      }
    }
    return true;
  }
      

  String.prototype.isPalindrome = function(){
    return isPalinedrome(this);
  }