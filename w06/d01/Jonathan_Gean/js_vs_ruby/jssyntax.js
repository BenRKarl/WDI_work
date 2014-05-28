//comment
var myJSNameArray = ['tim','dragon','turm'];

function multiply(x, y){
  return x * y;
}

//semi-colon at end of statements

function greet(joyFactor){
  if (joyFactor > 10){
    var note = 'I am so happy';
  }
  else if (joyFactor > 0){
    var note ='I am happy';
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
  console.log('I am in love');
  break;
  default:
  console.log('This day does not count');
}

var myNameArray = ['J','C','G'];

for (var nameIndex in myNameArray){
  console.log(myNameArray[nameIndex] + '... is part of the name');
}

for (var idx = 0; idx < myNameArray.length; idx++){
  console.log( myNameArray[idx] + '...is part of the name');
}

myNameArray.forEach(function(nameItself, indx){
  console.log( nameItself + '... is part of the name');
})

var myObject = {name: 'Lichard', age: '3'};
myObject['name'];
