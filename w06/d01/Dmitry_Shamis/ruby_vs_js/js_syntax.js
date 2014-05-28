// JAVASCRIPT
// Comment out with //

var myJSNameArray = ["Lich", "Da", "Grey"];
myJSNameArray[0] = "Lich"

function multiply(x, y){
  return (x * y);
}

var multiply = function multiply(x, y){
  return (x * y);
};

function greet(joyFactor){
  if (joyFactor > 10) {
    var note = "I am SOOOOOO happy";
  } else if (joyFactor > 0){
    var note = "I am happy";
  } else {
    var note = "I am ehh";
  }
  return note
}

var day = "Tuesday";
switch (day){
  case 'Monday':
    console.log("Happy Coffee");
    break;
  case "Tuesday":
    console.log("How was that coffee?");
    break;
  case "Friday":
    console.log("I'm in love");
    break;
  default:
    console.log("This day does not count");
}

var myNameArray = ["Lichard", "de", "Grey"]

for (var nameIndex in myNameArray){
  console.log( myNameArray[nameIndex] + "...is part of the name");
}

for (var indx = 0; indx < myNameArray.length; indx++){
  console.log( nyNameArray[indx] + "...is part of the name");
}

myNameArray.forEach(function(nameItself, indx){
  console.log( nameItself + "...is part of the name");
})

var myObject = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'};
myObject['name'];
myObject.name;
