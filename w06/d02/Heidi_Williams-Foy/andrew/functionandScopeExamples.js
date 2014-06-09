
////////
///Scope Example
///////

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
dance ()
console.log('How good are you feeling?: ', selfEsteem)



///////
//Closure Example
///////

function addFunctionBuilder(numToAdd){
	var message = 'Where am I?';
	console.log(message);
  return function(number){
  	        return (number + numToAdd);
  };

}

var addTwo    = addFunctionBuilder(2);

function bankTransaction(){
  function verifySSNumber(){
  	//Super secret stuff.
  	 balance = balance + cash
    }
   }
}


///////
//Callback Example
////////

function cheer(){
   console.log('Hooray!!')

}

function doWorkNow(doAfter){
	//Do a bunch of stuff (like fold a paper airplane)
	  //Demonstrated here via a loop thing
	  for (var i = 0; i 10000; i++) {
	  	console.log(i);
	  };

doAfter();

}

doWorkNow(cheer)


///////
//Timeout Example
///////

setTimeout(function(){console.log('You are great')}, 100000)
setTimeout(function(){console.log('You are awesome')}, 1000600)






