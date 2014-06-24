var string = "tester"
var substring = "est"

var searchResult = string.search(substring)


function findSubstring(string, substring){
  if (string.match(substring)){
    return string.match(substring)['index'];
  }
    return false;
}

# Matt
function findSubstring(string, substring){
  for (var i=0; i < string.length - substring.length; i++){
    if (substring == string.substring(i, i+substring.length-1)){
      return i;
    }
  }
  return false;
}
