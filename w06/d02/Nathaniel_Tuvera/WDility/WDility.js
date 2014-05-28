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

  },

  select: function(array,func) {

  },

  unique: function() {


  },

  reduce: function() {


  }

};




// var myArray = [1,2,3,4];
