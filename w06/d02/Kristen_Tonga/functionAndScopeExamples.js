
/////////////
//// Scope Example
////////////

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 1;
    funkLevel = funkLevel -3;
    var confidence = 0;
  }

  makeFoolOfSelf()
}

var selfEsteem = 10;
dance()
console.log('How are you feeling?: ', selfEsteem)




/////////////
//// Closure Example
////////////

function addFunctionBuilder(numToAdd){
  return function(number){
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2);
var addThree = addFunctionBuilder(3);

// addTwo(3) => 5
// addThree(3) => 6

// -------------------------------------------------------------------------------- //

function bankTransaction(){
  function verifySSNumber(){
    // Secret stuff!! This is in a closure because it's referenced, but isn't accesible to a hacker...
  }

  return function(cash){
    if (verifySSNumber()){
      balance = balance + cash
    }
  }
}



/////////////
//// Callback Example
////////////

funtion cheer(){
  console.log( 'Hooray!!!!' )
}

function doWorkNow(doAfter){
  // Do stuff(like fold airplane)
    // Demonstrated here via a loop thing
    // Can use if/else for sucess/fail
    for (var i = 0; i < 10000; i++) {
      console.log(i);
    };
  doAfter();
}

doWorkNow(cheer)




/////////////
//// Timeout Example
////////////

setTimeout(function(){console.log('You are great')}, 100000)
setTimeout(function(){console.log('Take a moment: observe, breath, give thanks')}, 4600000)
