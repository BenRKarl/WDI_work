var myString = "It's a string of the strings!"

function reverseString(s) {
  var newString = "";
  for (var i = s.length - 1; i >= 0; i--)
    newString += s[i];
  console.log(newString);
}

  reverseString(myString)

function noVowels(s) {
  console.log(s.replace(/[aeiou]/gi, ''));
}

  noVowels(myString)

function theGreat(s) {
  console.log(s.replace(/the/g, "the great"));
}

  theGreat(myString)

function capitalize(s){
  return s.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}

  capitalize(myString)
