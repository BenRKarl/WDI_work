//////////// scope example

function dance() {

  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf() {
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel - 2;
    var confidence = 0;
  }

  makeFoolOfSelf()

}

var selfEsteem = 10;
dance()
console.log("How good are you feeling?: ", selfEsteem)

//////////// closure example

function addFunctionBuilder(numToAdd) {
  var message = "Where am I?";
  return function(number) {
    console.log(message);
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2);

function bankTransaction() {
  function verifySSN() {
    // secret stuff
  }
  return function(cash) {
    if (verifySSN()) {
      balance = balance + cash;
    }
  }
}

//////////// callback example

function cheer() {
  console.log("Hooray!!!")
}

function doWorkNow(doAfter) {
  // do a bunch of stuff
  for (var i = 0; i < 10; i++) {
    console.log(i);
  };
  doAfter();
}

doWorkNow(cheer)

//////////// timeout example

setTimeout(function() {console.log("You are great")}, 10)

