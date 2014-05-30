
///////////////////
// Scope Example
///////////////////

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem -2;
    funkLevel = funkLevel -2;
    var confidence = 0;
  }

  makeFoolOfSelf()
}

var selfEsteem = 10;
dance();
console.log('how good are you feeling?:', selfEsteem)


///////////////////
// Closure Example
///////////////////

function addFunctionBuilder(numToAdd){
  var message = 'Where am I?';
  return function(number){
    console.log(message);
    return (number + numToAdd);
  };
}

// var addTwo = addFunctionBuilder(2)
// addTwo(3)  #=> 5
// "message" exists in the closure


function bankTransaction(){

  function verifySSN(){
    // super secret stuff
  }
  
  return function(cash){
    if (verifySSN()){
    balance = balance + cash;
    }
  }
}

// the "function verifySSN()"" exists in the closure



///////////////////
// Callback Example
///////////////////

function cheer(){
  console.log('Hooray!!!')
}

function doWorkNow(doAfter){
  // do a bunch of stuff
        // demonstrated here via a loop thing
        for (var i = 0; i < 10000; i++){
          console.log(i);
        };
  doAfter();
}

doWorkNow(cheer)

///////////////////
// Timeout Example
///////////////////

setTimeout(function(){console.log('You are great')}, 100000);
setTimeout(function(){console.log('You are awesome')}, 3600000)








