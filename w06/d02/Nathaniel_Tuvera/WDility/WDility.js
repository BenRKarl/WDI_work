var WDility = {

  each: function(array, func) {
    for (i in array) {
      func(array[i]);
    }
    return array
  },

  first: function(array) {
    var shift = array.shift();
    return shift
  },

  last: function(array) {
    var drop = array.pop();
    return drop
  },

  map: function(array, func) {
    for (var i = 0; i < array.length; i++){
      array
    };
      return
  },

  select: function(array,func) {
    array.prototype.select = function() {
      for (i = 0; i < array.length; i++) {
        this[i] >= 2;
      }

    return array.select
    }
  },

  unique: function() {


  },

  reduce: function() {


  }

};




// var myArray = [1,2,3,4];
