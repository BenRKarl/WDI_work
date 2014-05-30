var calculator = {
  add: function(a, b){
    return (a + b);
  },

  subtract: function(a, b){
    return (a -b);
  },

  multiply: function(a, b){
    return (a * b);
  },

  divide: function(a, b){
    return (a / b);
  },

  calc: function(a, b, operation){
    switch (operation){
      case 'add':
        return this.add(a, b)
        break;
      case 'subtract':
        return this.subtract(a, b)
        break;
      case 'multiply':
        return this.multiply(a, b)
        break;
      case 'divide':
        return this.divide(a, b)
        break;
    }
  }
}



var myBird = {
  name: 'Tweety',

  chirp: function(){
    console.log('tweet tweet!');
  },

  fly: function(){
    console.log('Fly.');
  }
};

myBird.fly()


var person = {
  name: 'Roe',

  sing: function(){
    console.log('alalalala');
  },

  introduce: function(){
    console.log(this.name + ' is pleased to meet you')
  }
};



// Constructor function

function Person (name){
  this.name = name;
}

Person.prototype = {
  warmBlooded: true,
  jump: function(){
    console.log("Jump jump jump");
  }
};

var lich = new Person('lichard');
