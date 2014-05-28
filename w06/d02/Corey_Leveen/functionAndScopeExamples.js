////////////////
// Scope Example

function dance() {
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf() {
    selfEsteem = selfEsteem -2;
    funkLevel = funkLevel -2;
    var confidence = 0;
  }


  makeFoolOfSelf()
}

  var selfEsteem = 10;
  dance()
  console.log('How good you feeling?: ', selfEsteem)



////////////////
// Closure Example

function addFunctionBuilder(numToAdd){
  return function(number){
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2);




// What is going on here????

function bankTransaction() {

  function verifySSNumber() {

  }

  return function(cash) {
    if (verifySSNumber()){
    balance = balance + cash
    }
  }
}

////////////////
// Callback Example

function cheer() {
  console.log("Hoooray!!!")
}

function doWorkNow(doAfter) {
  // Do a bunch of stuff(like fold a paper airplane)
  // Demonstrated here via a loop thing

  for (var i = 0; i < 10000; i++) {
    console.log(i);
  };

  doAfter();

}

doWorkNow(cheer)

////////////////
// Timeout Example

setTimeout(function(){ console.log('You are great')}, 100000000)
