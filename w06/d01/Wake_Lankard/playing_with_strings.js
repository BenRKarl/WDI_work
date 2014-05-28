myString = "Now is the time for all good men to come to the aid of their party.";

function rev(str){
  var arr;

  arr = str.split("");
  arr = arr.reverse();
  str = arr.join("");

  return str;
}

function disemvowel(str){
  var vowels = ['a', 'e', 'i', 'o', 'u'];

  vowels.forEach(function(vowel){
    re = new RegExp(vowel, "g");
    str = str.replace(re, "");
  })

  return str;
}

function greatness(str){
  str = str.replace(/ the /g, " the great ");

  return str;
}

function cap(str) {
  var arr;
  
  arr = str.split(" ");
  arr.forEach(function(word, index){
    arr[index] = word.replace(word.trim().charAt(0), word.trim().charAt(0).toUpperCase());
  })
  str = arr.join(" ");
  return str;
}


console.log("reverse: " + rev(myString));
console.log("disemvowel: "+ disemvowel(myString));
console.log("greatness:" + greatness(myString));
console.log("capitalize:" + cap(myString));

