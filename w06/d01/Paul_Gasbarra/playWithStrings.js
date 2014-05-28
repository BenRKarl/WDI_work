function reverse(string){
  reverse = '';
  index = string.length - 1;
  for (var letter in string){
    reverse += string[index];
    index -= 1;
  }
  return reverse;
}

function noVowels(text){
  replace = "";
  for (var letter in text){
    if ((text[letter] != "a") && (text[letter] != "e") && (text[letter] != "i") && (text[letter] != "o") && (text[letter] != "u") && (text[letter] != "A") && (text[letter] != "E") && (text[letter] != "I") && (text[letter] != "O") && (text[letter] != "U")){
      replace += text[letter]
    }
  }
  return replace;
}

function greatness(string){
  return string.replace('the', 'the great');
}

function capitalize(string) {
newString = "";
index = 0;
  for (var letter in string){
    if (index == 0){
      newString += string[index].toUpperCase();
      index += 1;
    }
    else if (string[letter] == " ") {
      newString += " " + string[index + 1].toUpperCase();
      index += 2;
    }
    else {
      newString
      index += 1;
    }
  }

  return newString

}

