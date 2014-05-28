// Write a function to:
// reverse a string
// remove all vowels from a string
// replace all instances of 'the' with 'the great'
// capitalize each word in a string



// reverse a string
// ----------------

function stringReverse(phrase){
  var phraseArray = phrase.split('');
  var length = phraseArray.length;

  var i = length-1;  
  while (i >= 0) {
    result = result + phraseArray[i];
    i = i - 1;
  }
  return result;
}

var result = ''; 
var phrase = 'This is the thing, we always wanted to do.';
stringReverse(phrase);
console.log(result)


// remove all vowels from a string
// -------------------------------

function vowelRemove(phrase) {
  var phraseArray = phrase.split('');
  var length = phraseArray.length;
  
  var i = 0;
  while (i < length){
      if (!(/[aeiou]/.test(phraseArray[i]))){
      result = result + phraseArray[i];
      }
    i = i + 1;
  }
  return result;
}

var result = ''; 
var phrase = 'This is the thing, we always wanted to do.';
vowelRemove(phrase);
console.log(result)


// replace all instances of 'the' with 'the great'
// -----------------------------------------------

function stringReplace() {
  result = phrase.replace(/the/g, 'the great');
  return result;
}

var result = ''; 
var phrase = 'This is the thing, we always wanted to do.';
stringReplace(phrase);
console.log(result)


// capitalize each word in a string
// --------------------------------

function stringCapitalize() {
  var phraseArray = phrase.split(' ');
  var length = phraseArray.length;

  var i = 0;
  while (i < length){
    result = result + phraseArray[i].charAt(0).toUpperCase() + phraseArray[i].substr(1).toLowerCase() + ' ';     
    i = i + 1;
  }
  return result.trim();
}

var result = '';
var phrase = 'This is the thing, we always wanted to do.';
stringCapitalize(phrase);
console.log(result);


