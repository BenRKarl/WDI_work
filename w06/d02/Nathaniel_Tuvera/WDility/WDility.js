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

  map: function(array,func) {
    var map = array.map(function(x) { return x + 1 });
    return map
  },

  select: function(array,func) {
    var filtered = array.filter(function(x) {return x > 2; });

  return filtered

  },

  unique: function() {


  },

  reduce: function(array, func) {
  }
};





// var myArray = [1,2,3,4];
