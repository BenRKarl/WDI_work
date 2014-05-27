// Create an array that contains a few of your favorite things (fruits, vegetables, colors, sports teams, whatever).
// Write some code in JavaScript that outputs strings like (for an array of arbitrary length):
// My #1 favorite baseball team is the New York Mets.
// My #2 favorite baseball team is the San Francisco

var myFavsArray = ["pizza", "bagels", "ice cream", "chicken parm", "Israeli salad"]

for (var index = 0; index < myFavsArray.length; index++){
  console.log( "My #" + (+index+1) + " favorite food is " + myFavsArray[index]);
}
