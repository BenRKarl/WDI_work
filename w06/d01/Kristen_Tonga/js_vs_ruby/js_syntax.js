// Comments

var myJavascriptArr = [1, 2, 3];

function multiply(x, y){
  return (x * y)
}

var multiply = function multiply(x, y){
  return (x * y);
};




funtion greet(jayFactor){
  if (jayFactor > 10){
    var note = 'Happy';
  } else if (jayFactor > 0){
    var note = "ok";
  } else {
    var note = "ejj";
  }
  return note;
}


var day = 'Tuesday'
switch (day){
  case 'Monday':
    console.log('Happy Coffee');
    break;
  case 'Tuesday':
    console.log('Coffee?');
    break;
  default:
    console.log('Love');
}


var myNameArray = ['Lichard', 'de', 'man'];

for (var nameIndex in myNameArray){
  console.log( myNameArray[nameIndex] + '... is part')
}

for (var index = 0; index < myName.length; index++){
  console.log( myNameArray[index] + '...');
}

myNameArray.forEach(function(nameItself, index){
  console.log( nameItself + '...');
// SAME AS =>  console.log( myNameArray[index] + '...');
})



var myObject = {name: 'bob', age: '100', hobby: 'skygliding'}
myObject['name']
myObject.name
