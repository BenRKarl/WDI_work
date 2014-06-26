var findSubstring = function(string, substring){
  if (string.search(substring) >= 0) {
  console.log(string.search(substring));
  } else {
    console.log(false);
    console.log("There is no " + substring + " in " string);
  }
}
