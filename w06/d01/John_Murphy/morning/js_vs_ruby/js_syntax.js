// Commenting out in JS
> console.log("Her you up there. Stop dancing... I can hear you through the jdwmurph application bar thing.")
Her you up there. Stop dancing... I can hear you through the jdwmurph application bar thing.
undefined

> var myJavascriptArray = [2, 3, 4, 5];
undefined

> myJavascriptArray[0]
2

function multiply(x,y){
  return (x * y);
}

var multiply = function multiply(x, y){
  return (x * y);
};

function greet(joyFactor){
  if (joyFactor > 10){
    var note = "I am sooo happy";
  } else if (joyFactor > 0){
    var note = "I am happy";
  } else {
    var note = "I am ehh";
  }
  return note;
}

var day = "Tuesday"
switch (day){
  case 'Monday':
    console.log('Happy coffee');
    break;
  case 'Tuesday':
    console.log('How was that coffee');
    break;
  case 'Friday':
    console.log('I am in love');
    break;
  default:
    console.log('This day does not count');
}

var myNameArray = ['Lichard', 'de', 'Grey'];

for (var nameIndex in myNameArray){
  console.log( myNameArray[nameIndex] + '... is part of the name');
}

for (var indx = 0; indx < myNameArray.length; indx++){
  console.log( myNameArray[indx] + '... is part of the name');
}

myNameArray.forEach(function(nameItself, indx){
  console.log( nameItself + '... is part of the name');
})

var myObject = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'};
myObject['name'];
myObject.name;

var myVariable = "This is my greeting:"

function changeGreeting(greeting){
  return myVariable = myVariable + greeting;
}
