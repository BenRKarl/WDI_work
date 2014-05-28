//Hi I'm a comment!

var myJsArray = ['Lich', 'Bod', 'Joe'];
myJsArray[0]

//No implicit return!

function multiply(x, y){
  return (x * y);
}

var multiply = function multiply(x, y){
  return (x * y);
}; //<--------- semi-colon!

//Conditional function
function greet(joyFactor) {
if (joyFactor > 10) {
  var note = 'I am soo happy!';
} else if (joyFactor > 0) {
  var note = 'I am fairly happy.';
} else {
  var note = 'Ehhhh.....';
}
  return note;
}

//Some switchy, case-y stuff!

var day = "Tuesday"

switch(day) {

  case "Monday":
    console.log('Happy coffee town');
    break;

  case "Tuesday":
    console.log('How was that coffee town?');
    break;

  case "Friday":
    console.log("I am in a love.");
    break;

  default:
    console.log("This isn't a real day");

}

//Iterating!

var myNameArray = ['Lichard', "de", "Gray"]

//One way...
for (nameIndex in myNameArray) {
  console.log( myNameArray[nameIndex] + "...is part of the name.");
}

//Another way...
for (var idx = 0; idx < myNameArray.length; idx++){
  console.log(myNameArray[idx] + "... is part of the name");
}

//Yet another way...
myNameArray.forEach(function(nameItself, indx) {
  console.log(nameItself + "... is part of the name.");
})
//forEach accepts a function as an argument...

//Hasts!? No. Object.

var myObject = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'};
myObject['name'];
myObject.name;
