function calculator() {
}

calculator.prototype = {
  add: function(x, y){
    return x + y;
  },

  subtract: function(x, y){
    return x - y;
  },

  multiply: function(x, y){
    return x * y;
  }
}

var calculator = new calculator