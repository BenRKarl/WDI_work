// ##Part 3
// ###Favorite Things
// - Create an array that contains a few of your favorite things (fruits, vegetables, colors, sports teams, whatever).
// - Write some code in JavaScript that outputs strings like (for an array of arbitrary length):
//   - My #1 favorite baseball team is the New York Mets.
//   - My #2 favorite baseball team is the San Francisco

var faves = ["Baseball", "Movies", "Travel", "Milkshakes"]
// console.log("My favorite sport is " + faves[0])
var faves = ["Baseball", "Movies", "Travel", "Milkshakes"]
for (var item in faves){
  var number = +item + 1;
  console.log("One of my favorite things (" + number + "): " + faves[item]);
}
