var myJSNameArray = ['Lich', 'Da', 'Grey'];
// myJSNameArray[0]





function multiply(x, y) {
  return(x * y);
}

var multiply = function multiply(x, y){
  return (x * y);
};
// need the final semicolon bcs it refers back to the variable 'multiply'. odd but necessary.






function greet(joyFactor) {
  if (joyFactor > 10){

var note = 'I am SOO happy';
} else if (joyFactor > 0){
  var note = 'I am happy';

} else {
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






for (var index = 0; index < myNameArray.length; index++){
  console.log( myNameArray[index] + '...is part of the name');
}

myNameArray.forEach(function(nameItself, index) {
  console.log( nameItself = '... is part of the name');
})



//  objects = hashes. still say it is a 'key|value' pair
var myObject = {name: 'Lichard', age: 3 hobby: 'Learning Javascript'};
myObject['name']
myObject.name




