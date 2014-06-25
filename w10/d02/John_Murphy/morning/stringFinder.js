function stringFinder(string, subString){
  var i = 0
  while ( i < string.length) {
    if (subString[0] == string[i]) {
      var y = i
      var x = 0
      var result = 0
      while (x < subString.length) {
        if (string[y] != subString[x]){
          result += 1
        }
        x += 1
        y += 1
      }
      if (result == 0) {
        return i
      }
    }
    i++
  }
  return false
}
