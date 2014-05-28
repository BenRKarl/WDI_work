function reverse(s){
    return s.split("").reverse().join("");
}

function removeVowels(s) {
  return s.replace(/[aeiou]/ig, '');
}

function great(s) {
  return s.replace(/the/g, 'the great');
}

function capitalize(s){
    return s.toLowerCase().replace( /\b./g, function(a){ return a.toUpperCase(); } );
};

