//////
/////Scope Example
//////

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel - 2;
    var confidence = 0;
  }
  makeFoolOfSelf()
}

var selfEsteem = 10
dance()
console.log("self esteem = ", selfEsteem)

//////
////Closure Example
//////

function addFunctionBuilder(numToAdd){
  return function(number){
    return (number + numToAdd);
  };
}

var addTwo = addFunctionBuilder(2)

addTwo(3) => 5

////OR/////

function bankTransaction(){
  function verifySSNumber(){
    //Super secret stuff
  }

  return function(cash){
    if (verifySSNumber()){
    balance = balance + cash
    }
  }

}

///////
////Callback Example
///////

function cheer(){
  console.log("Hoooray!!");
}

function doWorkNow(doAfter){
  ///Do a bunch of stuff!(like fold a paper airplane)
    ///Demonstrate here via a loop thing
      //for (var i = 0 ;length - 1; i >= 0; i--) {
      //  0 ;i]
      //};
      doAfter();
}


///////
////Timeout Example
///////

setTimeout(function(){console.log('You are great')}, 1000);
setTimeout(function(){console.log('You are great')}, 3600000);
