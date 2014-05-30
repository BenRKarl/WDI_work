var myJSNameArray = ['Lich', 'Da', 'Gray']
myJSNameArray[0]

function multiply(x, y){
  return (x * y);
}

//another way
var multiply = function multiply(x, y){
  return (x * y);
};

function greet(joyFactor){
  if (joyFactor > 10){
    var note = 'im soo happy';
  } else if (joyFactor > 0){
    var note = 'im happy';
  } else {
    var note = 'im ehhh';
  }
  return note;
}

var day = 'tuesday'
switch (day){
  case 'monday':
    console.log('happy coffee');
    break;
  case 'tuesday':
    console.log('how was that coffee?');
    break;
  case 'friday':
    console.log('im in love');
    break;
  default:
    console.log('this day doent count');
}

var myName = ['Lich', 'Da', 'Gray']
for (var nameIndex in myName){
  console.log(myName[nameIndex] + "... is part of the name");
}

// another way
for (var i = 0; i < myName.length; i++){
  console.log(myName[i] + "... is part of the name");
}

// another way
myName.forEach(function(name, indx){
  console.log(myName[indx] + "... is part of the name");
  console.log(name + "... is part of the name");
})

var myObject = {name: "Lich", age: 3, hobby: "learning js"}
myObject['name'];
myObject.name;

