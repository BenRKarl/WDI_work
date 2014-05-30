

//
//Scope Example
//
function dance(){
  var funklevel = 5;
  selfEsteem = selfEsteem + 5;

  function beFoolish(){
    selfEsteem = selfEsteem - 3;
    funklevel = funklevel - 2;
    var confidence = 0;
  }
  beFoolish()
}
selfEsteem = 10;
dance()
console.log('self esteem: ', selfEsteem)

//
//Closure Example
//
function addFunctionBuilder(numToAdd){
  var message = 'where is this?'; //this exists in closure
  return function(number){
    console.log(message); //this maintains ref to message
    return (number + numToAdd);
  };
}
var addTwo = addFunctionBuilder (2);
  // use as addTwo(3) ==> 5

  //other example*
function bankTransaction(){
  function verifySSN(){
    //secret stuff

  }
  //this exists in a closure (it's maintained by ref below)
  return function(cash){
    if (verifySSN()){
      balance = balance + cash;
    }
  };
}
//end other example


//
//Callback Example
//
function cheer {
  console.log('Hooray!!')
}
function doWorkNow (doAfter) {

  // Do 'stuff' like fold a plane of paper...
      //Demonstrate 'stuff' here via a loop thing
         for (var i = 0; i < 1000; i++){
          console.log(i);
         };
  doAfter();
}
doWorkNow(cheer) //call the function w/ callback

//
//Timeout Example
//

setTimeout(function(){console.log('You are great')}, 6000)


