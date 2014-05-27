function strings(string) {
  input = string;
  return input;
}

input

function reverse(text){
  return text.split('').reverse().join('');
}

reverse(input)

function removeVowels(text){
  return text.replace(/[aeiou]/gi, '');
}

removeVowels(input)

function replaceWords(text){
  return text.replace('the', 'the great');
}

function capitalize(text){
  return text.toUpperCase();
}

capitalize(input)
