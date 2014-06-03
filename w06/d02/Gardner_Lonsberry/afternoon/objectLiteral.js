var person = {
  name: 'Gardner',
  yell: function(){
    console.log('I CANNOT CONTROL THE VOLUME OF MY VOICE!!');
  },
  introduce: function(){
    console.log (this.name + ' is pleased to meet you');
  }
}


// person.introduce()
// person['yell']()
// .__proto__


// The new keyword starts a 3 step process
  // 1. Creates a new object
  // 2. Sets the objects __proto__ to the functions prototype
  // 3. Evaluates the constructor function with the objects as this

  