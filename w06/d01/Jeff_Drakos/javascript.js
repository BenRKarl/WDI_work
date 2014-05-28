var myJSnamearray = ['lich', 'bod', 'gray'];

function multiply(x,y){
  return (x * y)
}


function greet(joyFactor) {
if (joyFactor > 10) {
  var note = 'I am so happy';
} else if (joyFactor > 0) {
  var note = 'I am happy';
} else {
  var note = 'I am ehh';
}
return note;
}

var day = "tuesday";
switch (day){
  case "monday":
  console.log("Happy coffee");
  break;
  case "tuesday":
  console.log("How was that coffee");
  break;
  case "friday":
  console.log("I am in love");
  break;
  default:
  console.log("This day does not count");
}


var myNameArray = ['lich', 'bod', 'gray'];

for (nameIndex in myNameArray){
console.log(myNameArray[nameIndex] + ".... is part of the name");

}

for (indx = 0; indx < myNameArray.length; indx++{
console.log(myNameArray[indx] + ".... is part of the name");

}

myNameArray.forEach(function(nameItself, indx){
console.log(nameItself + ".... is part of the name");

})
