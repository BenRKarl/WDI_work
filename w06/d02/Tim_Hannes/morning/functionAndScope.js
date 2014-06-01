// Scope Example

function dance(){
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;

  function makeFoolOfSelf(){
    selfEsteem = selfEsteem - 4;
    funkLevel = funkLevel - 2;
    var confidence = 0; //quickly leave "scope" and confidence of 0 is dropped
  }

  makeFoolOfSelf()

}

  var selfEsteem = 10;
  dance()
  console.log('How good are you feeling?: ', selfEsteem)


// Closure Example

function addFunctionBuilder(numToAdd){
  var message = 'where am i?'; //this sticks around bc it is being referenced below.
  return function(number){
            console.log(message);
            return (number + numToAdd);
          };

var addTwo      = addFunctionBuilder(2);



function bankTransaction(){
  function verifySSN(){
    //secret stuff
  }

  return function(cash){
    if (verifySSN()){
       balance = balance + cash;
    }
  };

}

// Callback Example

function cheer(){
  console.log("Hooray!")
}

function doWorkNow(doAfter){
    //do a bunch of stuff like fold a paper airplane

                //demonstrated here via a loop thing
                for (var i = 0; i < 100000; i++) {
                  console.log(i);
                };

    doAfter();
}

doWorkNow();

// Timeout Example


setTimeout(function(){console.log('You are great')}, 900000)
