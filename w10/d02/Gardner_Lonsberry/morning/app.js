// var mystring = "foo"
// alert(mystring.indexOf("oo") > -1);

function findstring(string, substring) {
  var results = string.search(substring)
  if (results === 'true') {
    return results;
      else {
        console.log(Not found)
      }
  }
}