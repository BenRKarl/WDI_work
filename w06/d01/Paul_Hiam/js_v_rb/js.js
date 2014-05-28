//a js comment

var JsArray = ['towel', 'football', 'bugs'];

function multiply(x, y) {
  return (x * y)
};
// house function in a variable (football pass function)

3 == 3
3 == '3'
3 === '3' #> false

var multiply = function multiply(x, y) {
  return (x * y)
}

function greet(joyFactor){
  if (joyFactor > 10){
    var note = 'I am SOOO happy';
  }else if (joyFactor > 0){
    var note = 'I am happy';
  }else {
    var note = 'I am eehhh';
  }
  return note;
}

var day = 'Tuesday'
switch (day){
  case 'Monday':
    console.log('Happy coffee');
    break;
  case 'Tuesday':
    console.log('how goes that?');
    break;
  case 'Friday':
    console.log('I am in love');
    break;
  default:
    console.log('This do not count');
}
var MyNameArr = ['pual', 'the', 'great'];
for (var nameIndex in myNameArr){
  console.log( MyNameArr[nameIndex]+ '...is part of the name');
}

for (var idx = 0; idx < MyNameArr.length++){
  console.log(MyNameArr[idx] + '..is in the name');
}
MyNameArr.forEach(function(nameItself, indx){
  console.log( MyNameArr[indx] + '...is pon da naame mon');
  console.log( nameItself + '...is in da naame mon');
})
// will dubl up the printed statement (exampl)
// forEach expects a name var for the value then one for the index of that element (first elem first)

var myObj = {name: 'Lich', age: 3, hobby: 'Fly Fishing'};
myObj['name'];
myObj.name;

// day 2 of week 6
  //calculator in/as an object literal (library..?)

var calculator = {
  add: function(a, b){
    return(a + b);
  },
  subtract: function(a, b){
    return(a - b);
  },
  multiply: function(a, b){
    return(a * b);
  },
  divide: function(a, b){
    return(a / b);
  },
  calc: function(a, b, operation){
    switch(operation){
      case 'add':
        return this.add(a, b);
        break;
        case 'subtract':
        return this.subtract(a, b);
        break;
    }
  }
}



