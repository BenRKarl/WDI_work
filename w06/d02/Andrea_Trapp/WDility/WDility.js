
var WDility = {
  each: function(array, func) {    
    for (i in array){
      func(array[i]);
    }
    return array
  },

  first: function(array) {
    return array[0];
  },

  last: function(array) {
    return array[array.length-1];
  },

  map: function(array, func) {
    var newArray = [];
    for (i in array){
      newArray[i] = func(array[i]);
    }
    return newArray;
  },

  

};

