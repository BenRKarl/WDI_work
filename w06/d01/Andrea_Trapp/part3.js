// Create an array that contains a few of your favorite things (fruits, vegetables, colors, sports teams, whatever).
// Write some code in JavaScript that outputs strings like (for an array of arbitrary length):
// My #1 favorite baseball team is the New York Mets.
// My #2 favorite baseball team is the San Francisco


// var myFavoriteThings = ['strawberries','sun','panda bear','orange','palm trees'];

// for (i in myFavoriteThings){  
//   console.log('My favorite thing #' + ++i + " is " + myFavoriteThings[i]);
// }


var myFavoriteThings = ['strawberries','sun','panda bear','orange','palm trees'];
var counter = 0;

myFavoriteThings.forEach(function(thing, idx){
  counter = idx + 1;  
  console.log('My favorite thing #' + counter + " is " + thing);
});
