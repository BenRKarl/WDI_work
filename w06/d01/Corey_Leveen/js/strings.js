myString = 'Camel'

function reversal(str) {
 var obj = new String(str);

   return obj.split("").reverse().join("");
}

function removeVowels(str) {
  var obj = new String(str);
  return obj.replace(/[aeiou]/gi, '');
}
