// Javascript commenting out stuff with //

var myJSNameArray = ['Lich', 'Da', 'Grey'];
myJSNameArray[0]

function multiply(x, y){
  return (x * y);
}

var multiply = function multiply(x,y){
  return (x * y);
};



function greet(joyFactor){
  if (joyFactor > 10){
    var note = "I am SOOO happy";
  } else if (joyFactor > 0){
    var note = "I am happy";
  } else {
    var note = "I am ehh";
  }
  return note;
}



var day = 'Tuesday';
switch (day) {
  case 'Monday':
  console.log('Happy coffee');
  break;
  case 'Tuesday':
  console.log('How was that coffee?');
  break;
  default:
  console.log("blach");
}


var myNameArray = ['lichard', 'da', 'grey'];

for (nameIndex in myNameArray){
  console.log( myNameArray[nameIndex] + '... is part of the name');
}

for (var indx = 0; indx < myNameArray.length; indx++){
    console.log( myNameArray[indx] + '... is part of the name');
}

myNameArray.forEach(function(nameItself, indx){
  console.log( nameItself + '... is part of the name');
})


var myObject = {name: 'lichard', age: 3, :hobby: 'Learning JavaScript'}
myObject['name']
myObject.name

var triangle = {sideA: 2, sideB: 4, sideC: 2,}
triangle.sideA
