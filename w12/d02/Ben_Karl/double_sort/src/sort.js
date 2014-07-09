function doubleSort(array){
  var wordArray = [];
  var numArray  = [];
  for (i = 0; i < array.length; i++){
    if (isNumber(array[i])) {
      numArray.push(array.shift());
      array.push('num');
    } else {
      wordArray.push(array.shift());
      array.push('word');
    }
  }
  numArray.sort(function(a, b){return a - b});
  wordArray.sort();
  for (i = 0; i < array.length; i++){
    if (array[i] === 'num') {
      array.push(numArray.shift());
      array.shift();
    } else {
      array.push(wordArray.shift());
      array.shift();
    }
  }
  return array
}

function isNumber(string){
  var parsed = parseInt(string)
  if (isNaN(parsed)){
    return false
  } else if (typeof parsed === 'number') {
    return true
  } else {
    return false
  }
}
