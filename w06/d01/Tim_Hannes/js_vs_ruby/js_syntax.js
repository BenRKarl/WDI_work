// This is a JS comment

var myJSNameArray = ['Lich', 'Da', 'Grey'];

function multiply(x, y){
  return(x * y);
}

function greet(joyFactor){
  if (joyFactor > 10){
    var note = 'I am soo happy';
  }
  else if (joyFactor > 0){
    var note = 'I am happy';
  }
  else {
    var note = 'I am ehh';
}
return note;
}

var day = 'Tuesday';
switch (day){
  case 'Monday':
    console.log('Happy Coffee Day');
    break;
  case 'Tuesday':
    console.log('How was that coffee?');
    break;
  case 'Friday':
    console.log('I am in love');
    break;
  default:
    console.log('This day does not count.')
}

// To print all names with ...is part of the name after it.
var myNameArray = ['Lichard', 'de', 'Grey'];

for (nameIndex in myNameArray){
  console.log(myNameArray[nameIndex] + '... is part of the name');
}

for (var idx = 0; idx < myNameArray.length; idx++){
  console.log( myNameArray[idx] + '... is part of the name');
}

myNameArray.forEach(function(nameItself, indx){
  console.log(nameItself + '... is part of the name');
})


 // IN JS THIS IS A HASH, BUT WE CALL IT AN OBJECT. Key value pairs.
var myObject = {name: 'Lichard', age: 3, hobby: 'Learning JS'};
myObject['name']
myObject.name
