function isPalindrome(string){
	var.len = string.length;
	for (var i = 0; i < Math.floor(len/2) ++i)
		if (str[i] !==str[len-1-en]) {
			return false;
		}
}
return true
}

var isPalindrome = function(str){
	var i = 0;
	var j = str.length-1;
	while (i <= j){
		if(string[i] != str[j]){
			return false;
		}
	    i++;
	    j--;
	}
	return true;
}

var isPalindrome2 = function(str){
	for (var i = 0, var j = string.length-1; i<string.length/2; i++, j--){
		if (string[i] !=[j]){
	      return false;
		}
	}
	return true;
}

String.prototype.isPalindrome = function {
	return isPalindrrome (this);
}
   