// ##Part 4
// ###Playing with Strings
// - Write a function to:
//   - reverse a string
//   - remove all vowels from a string
//   - replace all instances of 'the' with 'the great'
//   - capitalize each word in a string
function reverseString(string){
  return string.split("").reverse().join("");
}

function removeVowels(str) {
  return str.replace(/[aeiou]/gi, '');
}

function placeGreat(str){
  return str.replace(/the/g, "the great");
}

function capitalizeWords(str){
  return str.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});
}

console.log(toTitleCase("this is now capitalized"))
