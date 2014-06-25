


function substr(a,b){
  //console.log(a.search(b));
  if (a.search(b) >= 0) {
    return a.search(b);
  } else {
    return false;
  }

}

console.log(substr("hello", "ll"));
console.log(substr("hello", "x"));
