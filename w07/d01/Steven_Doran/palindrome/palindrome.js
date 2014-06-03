
function isPalindrome (string) {
   var i = 0;
   var j = string.length-1;
   while (i <= j){
      if (string[i] != string[j]){
         return false;
      }
      i++;
      j--;
   }
   return true;
};

function isPalindrome2 (string) {
   for (var i = 0, j = string.length-1; i < string.length/2; i++, j--){
      if (string[i] != string[j]){
         return false;
      }
   }
   return true;
}

