///////////////////
// SCOPE EXAMPLE //
///////////////////

function dance() {
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf() {
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel - 2;
    var confidence = 0;
  }
  makeFoolOfSelf();
}

var selfEsteem = 10;
dance();
console.log('How good are you feeling?: ', selfEsteem);

/////////////////////
// CLOSURE EXAMPLE //
/////////////////////

function addFunctionBuilder(numToAdd) {
  var message = "Where am I?";
  return function (number) {
    console.log(message);
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2);
// ---
function bankTransaction() {
  function verifySSNumber() {
    // Super secret stuff
  }

  return function(cash) {
    if (verifySSNumber()) {
      balance = balance + cash;
    }
  };
}

//////////////////////
// CALLBACK EXAMPLE //
//////////////////////

function cheer() {
  console.log('Hooray!!!!');
}

function doWorkNow(doAfter) {
  // Do a bunch of stuff(like fold a paper airplane)
  // Demonstrate here via a loop thing
  for (var i = 0; i < 1000000; i++) {
    console.log(i);
  };

  doAfter();

}

doWorkNow(cheer)

/////////////////////
// TIMEOUT EXAMPLE //
/////////////////////

setTimeout(function(){console.log('You are great')}, 100000)
