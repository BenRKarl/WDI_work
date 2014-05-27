myString = "Now is the time for all good men to come to the aid of their party.";

function rev(str){
  var output;

  output = str.split("");
  output = output.reverse();
  output = output.join("");

  return output;
}

function disemvowel(str){
  var vowels = ['a', 'e', 'i', 'o', 'u'];
  var output;

  output = str;
  vowels.forEach(function(vowel){
    re = new RegExp(vowel, "g");
    output = output.replace(re, "");
  })

  return output;
}

function greatness(str){
  var output;


  output = str.replace(/ the /g, " the great ");

  return output;
}

function cap(str) {
  var output;
  var arr;
  
  arr = str.split(" ");
  arr.forEach(function(word, index){
    arr[index] = word.replace(word.trim().charAt(0), word.trim().charAt(0).toUpperCase());
  })
  output = arr.join(" ");
  return output;
}







console.log("reverse: " + rev(myString));
console.log("disemvowel: "+ disemvowel(myString));
console.log("greatness:" + greatness(myString));
console.log("capitalize:" + cap(myString));

