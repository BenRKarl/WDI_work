

function isPalindrome(str) {
  sArr = str.split("");
  nArr = [];
  cArr = [];
  for (i in sArr) {
    if(sArr[i] != " ") {
      nArr.push(sArr[i]);
    }
  }
  len = nArr.length;
  for (i=len; i>0; i--) {
    cArr.push(nArr[i-1]);
  }
  var x = nArr.join("");
  var y = cArr.join("");
  console.log(x);
  console.log(y);
  return x==y;

}

z =isPalindrome("madam im adam");

console.log(z);

String.prototype.isPalindrome = function () {
  sArr = this.split("");
  nArr = [];
  cArr = [];
  for (i in sArr) {
    if(sArr[i] != " ") {
      nArr.push(sArr[i]);
    }
  }
  len = nArr.length;
  for (i=len; i>0; i--) {
    cArr.push(nArr[i-1]);
  }
  var x = nArr.join("");
  var y = cArr.join("");
  //console.log(x);
  //console.log(y);
  return x==y;

}

function isP(str) {
  len = str.length;
  if (len == 1) {
    return true;
  } else if (len == 2) {
    return (str[0] == str[1]);
  } else {
    console.log((str[0] == str[len-1]));
    if (str[0] == str[len-1]) {
      console.log(str.slice(1,len-1));
       return isP(str.slice(1,len-1));
    } else {
      return false;
    }
  }
}




