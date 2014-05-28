myString = 'Camel'

function reversal(str) {
 var obj = new String(str);

   return obj.split("").reverse().join("");
}

function removeVowels(str) {
  var obj = new String(str);
  return obj.replace(/[aeiou]/gi, '');
}

function theGreat(str) {
  var obj = new String(str);
  return obj.replace('the', 'the great');
}


// doesn't work yet
function capitals(str) {
  var obj = new String(str);
  arr = obj.split(" ");
  arr.forEach(function (str, indx){
    arr[indx].replace(arr[indx][0], str[0].toUpperCase());
    console.log("str[0] = "+ str[0].toUpperCase());
    console.log(arr[indx]);
    return arr.join(" ");
  })
  console.log(arr);
}

capitals('big cow in a pasture')
