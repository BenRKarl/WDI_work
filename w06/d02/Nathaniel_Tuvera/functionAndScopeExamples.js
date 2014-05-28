/////////////////
//Scope Example//
/////////////////

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
  dance()
  console.log('How good are you feeling?: ', selfEsteem)

///////////////////
//Closure Example//     Keep this in mind buecause something in the inner scope reqiures it, so hold on to it in a closure
///////////////////


function addFunctionBuilder(numToAdd)
  var message = "where am I?";
  return function(number){
           console.log(message);
           return (number + numToAdd);
         };
}

var addTwo    = addFunctionBuilder(2);


/// After the above makes sense then see below

function bankTransaction() {

  function veryifySSNumber(){
    // Super secret stuff!!!
  }

  return function(cash){
           if (verifySSNumber))){
             balance = balance + cash;
           }
         }

  };

}
////////////////////
//Callback Example//
////////////////////

function cheer() {
  console.log('Hooray!!!!')

}

function doWorkNow(doAfter(;

  // Do a bunch of stuff(like fold a paper airplance)
              // Demoonstratd here via a loop thing
              for (var i = 0; i < 10000; i ++) {
                console.log(i);
              };

  doAfter();
}
////////////////////
//Time Out Example//
////////////////////
