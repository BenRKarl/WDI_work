// The new keyowrd starts a three step process
  // 1. Creates a new object
  // 2. Sets the object's __proto__ to the functions prototype
  // 3. Evaluates the constructor function with the objects as this

// Constructor Function
function Person (name){
  this.name = name;
}

Person.prototype = {
  warmBlooded: true,
  jump: function(){
    console.log("JUMP JUMP JUMP");
  }
}

var lich = new Person("Lichard")
