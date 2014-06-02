/////SCOPE EXAMPLE
function dance(){

  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel -2;
    var confidence = 0;
  }

  makeFoolOfSelf()
}

var selfEsteem = 10;
dance()
console.log("how good are you feeling?: ", selfEsteem)



////Closure EXAMPLE

fucntion addFunctionBuilder(numToAdd){
  return function(number){
    return(number + numToAdd);
  };
}

function bankTransaction() {
  function verifySSNumber() {

  }
  return function(cash){
    balance = balance + cash
  }
}
}




/////callback EXAMPLE







////timeout example
