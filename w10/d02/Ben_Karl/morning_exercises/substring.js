function findSubstring(string, substring){
  for (i = 0; i < string.length-substring.length; i++){
    if( substring === string[i+substring.length-1] ){
      console.log(substring);
      console.log(string[i+substring.length-1]);
      return i;
    }
  }
};
