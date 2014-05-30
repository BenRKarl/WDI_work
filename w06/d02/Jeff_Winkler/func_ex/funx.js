
// scope

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf() {
    selfEsteem = selfEsteem -2;
    funkLevel = funkLevel -2;
    var confidence = 0;
  }

  makeFoolOfSelf();

}

var selfEsteem = 10;
dance();
console.log('selfEsteem:  ', selfEsteem)

// closure

function addFunctionBuilder(numToAdd) {
  return function(number) {
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2);

/*
function bankTransaction() {
  function verify() {
  }
  return function(cash) {
    if (verify()) {
      balance = balance+cash;
    }
  }
}

*/


// callback

function cheer() {
  console.log('Hooray!');
}

function doWorkNow(doAfter) {
  for (var i=0; i < 10000; i++) {
    console.log(i);
  };
  doAfter();
}

doWorkNow(cheer);

// timeout


setTimeout(function(){console.log('you are great')}, 1000)
















