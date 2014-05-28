var myJSNameArray = ['lich','Da','Grey'];


function multiply(x, y){
  return (x * y);
}

// 0.1 + 0.2 == 0.3  => false




function greet(joyFactor){
  if (joyFactor> 10){
    var note = 'I am soooo happy';
  } else if (joyFactor > 0){
    var note = 'I am happy';
  } else{
    var note = 'I am ehhh';
  }
  return note;
}




var day = 'Tuesday';
switch (day){
  case 'Monday':
    console.log( 'Happy coffee');
    break;
  case 'Tuesday':
    console.log( 'How was that coffee');
    break;
  case 'Friday':
    console.log( 'I am in love');
    break;
  default:
    console.log( 'This day does not count');
}




var myNameArray = ['lichard','de','grey'];
for (nameIndex in myNameArray){
  console.log( myNameArray[nameIndex] + '... is part of the name');
}

for (var idx = 0; idx < myNameArray.length; idx++){
  console.log( myNameArray[idx] + "...is part of the name");
}

myNameArray.forEach(function(nameItself, idx){
    console.log( myNameArray[idx] + "... is part of the name");
    // or also possible:
    console.log( nameItself + "... is part of the name");

})



var myObject = {name: 'lichard', age: 3, hobby: 'Learning JavaScript'};
myObject['name'];
myObject.name;



// Scopes: 

var x=10;

function change(){  
  x=11;
  console.log(x); // prints 11
}
console.log(x); // prints 10




function showMeTheMoney() {
    var x = 5;
    function increment() {
      x = x + 1;
      //var x = x + 1; prints 5, because var creates a local variable inside the increment function
    }
    increment(); // without calling increment() prints 5
    console.log(x); // prints 6
}




