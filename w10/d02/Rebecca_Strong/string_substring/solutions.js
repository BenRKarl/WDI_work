
// string.search(searchvalue)


// var str = "groovy";
// var n = str.search(/oo/i);;
// // above is case insensitive

// var str = "groovy";
// var n = str.search("oo");
// //above is case sensitive



string.substring(start,end)

var str = "groovy";
var res = str.substring(2, 4);

res = oo

//but....there's also .substr()

function findSubstring(string, substring){
for (var i = 0; i < string.length - substring.length; i++){

  if (substring == string.substr(i, substring.length));
    return i;
  }
  }
  return false;
}
