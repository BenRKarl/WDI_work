function find_substring(string, substring){
  for (var i = 0; i < string.length; ++i){
    if (string.substring(i, i+substring.length) == substring){
      return i;
      break;
    }
  }
  return false;
}

console.log(find_substring("groovy", 'oo'));
console.log(find_substring("far out","fa"));
console.log(find_substring("purple pie pete", "pumpkin"));