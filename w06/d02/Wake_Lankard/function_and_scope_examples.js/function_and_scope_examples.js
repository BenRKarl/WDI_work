/////////////////
////  Scope ////////
//////////////////

function dance (){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 2;
    funkLevel = funkLevel - 2;
    var confidence = 0;
  }

  makeFoolOfSelf()

}

  var selfEsteem = 10;
  dance()
  console.log('How good are you feeling?: ', selfEsteem)


////////////////
// Closure ////
//////////////

function addFunctionBuilder(numToAdd){
  var message = "where am i?"
  return function(number){
          console.log(message);
          //message exists in a closure because it's needed in the interior function
          return (number + numToAdd)
          };
}

var addTwo = addFunctionBuilder(2);


/////////////////
//Callback example
////////////////

function cheer() {
  console.log("hooray");
}

function doWorkNow(doAfter){

  //Do a bunch of stuff like fold a paper airplane
        //demonstated here via a loop thing
        for (var i = 0; i < 1000; i++ ) {
          console.log(i);
        }
  doAfter();
}

doWorkNow(cheer)
//the cheer function is the callback.  It is evalutated when the work is finised.


///////////////////
//Timeout example
/////////////////////

setTimeOut(function(){console.log('You are great')}, 100000)