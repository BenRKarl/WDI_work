


////////////////
// Scope Example
////////////////


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

var selfEsteem = 10;
dance()
console.log('How good you feeling?: ', selfEsteem)


////////////////
// Closure Example
////////////////


function addFunctionBuilder(numToAdd){
    return function(number){
        return (number + numToAdd);
    };
}

var addTwo = addFunctionBuilder(2);


////////////////
// Callback Example
////////////////


function cheer(){
    console.log ('Hooray!!!!')
}

function doWorkNow(doAfter){

    // Do a bunch of stuff (like fold a paper airplane)
    // Demonstrated here via a lop thing
    for (var i = 0; i < 1000001; i++) {
        console.log(i);
        };
    doAfter();
}

doWorkNow(cheer)


////////////////
// Timeout Example
////////////////


setTimeout(function(){console.log('You are great')}, 7200000)





