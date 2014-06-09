




// Scope Example

function dance () {
  var funkLevel = 5;
  selfEsteem = selfEsteem + 5;


  function makeFoolOfSelf() {
    selfEsteem = selfEsteem -2;
    funkLevel = funkLevel -2;
    var confidence = 0;

  }

  makeFoolofSelf()
}

var selfEsteem = 10;
dance()
console.log('How good you feeling?: ', selfEsteem)

// Closure Example


function addFunctionBuilder(numToAdd) {
  var message = 'Where am I?';
  // var notSoImportant = blahblahblah;
  // could be here but is not referenced below so
return function(number) {
  console.log(message);
  // where message in consolelog is referencing the var message 'Where am I?'
        return (number + numToAdd);

          };


}

var addTwo = addFunctionBuilder (2);



// functionbankTransaction() {
// function verifySSNumber() {

//   // super secret stuff!!!


// }

//   return function(cash) {
//     if (verifySSNumber()) {
//       balance = balance + cash;

//     }

//   }

// }

// Callback Example



function cheer()
 {

  console.log('Hooray!!!!')


 }

 function doWorkNow(doAfter){


  //Do A bunch of stuff(like fold a paper airplane)
  //Demonstrated here via a loop thing
  for (var i = 0; i <10000; i++)  {
    console.log(i);
 };

 doAfter();

}

doWorkNow(cheer);



// Timeout Example

setTimeout(function(){console.log('You are great')}, 100000;
setTimeout(function(){console.log('You are the best at failure')}, 900000;




var person = {
  name: 'Roe',
  sing: function() {
    console.log('Doh, a deer, a female deer...');
  },
  introduce: function(){
    console.log(this.name + 'is tone deaf');
  }
}

person.introduce();


//Constructor Function

//The new keyword (capital letter) starts a three step process:
//1. Creates a new, empty object
//2. Sets the object's __proto__ (ie. an empty hash, { }) to the constructor function's prototype {...}
// 3. Evaluate the constructor function with "this" becoming the new object.


function Person (name) {
  this.name = name;
}

Person.prototype = {
  warmBlooded: true,
  jump: function(){
    console.log('JUMP JUMP JUMP JUMP')

  }
}



var lich = new Person('Lichard')
var bod = new Person('Bod')

//a name is specific and goes in the constructor function block
//jumping is a shared or common ability and so goes in the prototype block
//so we need constructor functions so that we can create specifity against shared common traits.

//ex.2

function Person (name) {
  this.name = name;
}

Person.prototype.dream = 'Sailing';

var loery = new Person ('lo lo');
