
var myString = 'This is the WDI class proto'

function reverseString(str) {
  var len = str.length;
  var revStr = "";
  for (var indx=len; indx>0; indx--) {
    revStr = revStr + str[indx-1];
  }
  return console.log(revStr);
}

function revStr2(str) {
  return console.log(str.split("").reverse().join(""));
}

reverseString(myString);
revStr2(myString);




function removeVowels(str) {
  console.log(str.replace(/[aeiou]/gi,""));
}

removeVowels(myString);

function theGreat(str) {
  console.log(str.replace(/the/gi, "the great"));
}

theGreat(myString);

function capitalize(str) {
  var words = str.split(" ");
  var capitalized="";
  words.forEach(function(word) {
    var letters = word.split("");
    letters[0] = letters[0].toUpperCase();
    capitalized += letters.join("") + " ";
  });
  console.log(capitalized);
}

capitalize(myString);

