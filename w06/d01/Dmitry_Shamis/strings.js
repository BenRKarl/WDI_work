s = "If you want beef then bring the ruckus"

// reverse a string
function reverse(s){
  return s.split("").reverse().join("");
}

// remove all vowels from a string
function devowel(s){
  return s.replace(/[aeiou]/ig, "");
}

// replace all instances of 'the' with 'the great'
function theGreat(s){
  return s.replace(/the/g, "the great");
}

// capitalize each word in a string
function capitalize(s){
  return s.replace(/\w\S*/g, function(txt){return txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase();});;
}
