// Scope 

function dance() {
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf() {
  selfEsteem = selfEsteem - 2;    
  funkLevel = funkLevel - 2;
  var confident = 0;
  }
  makeFoolOfSelf();
}

// var selfEsteem = 10;
// dance()
// console.log('How good are you feeling?: ', selfEsteem)



// Closure
function addFunctionBuilder(numToAdd) {
  return function(number) {
    console.log(number + numToAdd);
  }
}

// var addFive = addFunctionBuilder(5);
// addFive(5);


function bankTransaction(cash) {
  function verifySSN() {
  }

  return function() {
    if (verifySSN()) {  
    balance = 89;  
    balance = balance + cash;
    console.log(balance);    
    }
  }
}

// bankTransaction(560);

function cheer() {
  console.log('Hooray');
}

function doWorkNow(doAfter) {
  for (var i = 0; i < 10; i++) {
    console.log(i);
    if (i > 5) {
      doAfter();
    }
  }
}

// doWorkNow(cheer);


// Time out:
// setTimeout(function() { console.log('You are great!') }, 1000);



// Object literal
var nessa = {
  name: 'Nessa',
  age:  24,
  dance: function() {
    console.log('Break it down')
  }
}

// console.log(nessa.name)
// nessa.dance()


var calculator = {
  add: function(a,b) {
    return (a + b);
  },
  subtract: function(a,b) {
    return (a - b);
  },  
  multiply: function(a,b) {
    return (a * b);
  },  
  divide: function(a,b) {
    return (a / b);
  },  
};



var britneyS = {
  name: 'Britney Lynn Spears',
  fame: 'Baby one more time',
  sing: function() {
    console.log('Ooh baby I can only lipsync');
  },
  introduce: function() {
    console.log(this.name + ' is from Louisiana')
  }  
}

// britneyS.introduce();
// britneyS.sing()




function Person(name) {
  this.name = name;
}

Person.prototype;


















































