//JS

var myJSNameArray = ['Lich', 'Bd'];

function multiply(x,y) {
  return (x * y);
}

function greet(joyFactor){
  if (joyFactor > 10){
    var note = 'I am soooo happy';
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
    console.log('Happy coffee');
    break;
  case 'Tuesday':
    console.log('How was that coffee');
    break;
  case 'Friday':
    console.log('Happy hour');
    break;
  default:
    console.log('This day doesn\'t count');
}

var myNameArray = ['Lichard', 'de', 'grey'];
for (nameIndex in myNameArray){
  console.log( myNameArray[nameIndex] + '... is part of the name');
}

for (var idx = 0; idx < myNameArray.length; idx++){
    console.log( myNameArray[idx] + '... is part of the name');
}

myNameArray.forEach(function (nameItself, indx){
  console.log( nameItself + '... is part of the nane');
})


// JS uses objects instead of hashes
var myObject = {name: 'Lichard', age: 3, hobby: 'Learning JS'};
// Accessing the object
myObject['name'];
myObject.name;




// A function that changes a variable through scope
x = 1;
function test() {
  x = 2;
}
