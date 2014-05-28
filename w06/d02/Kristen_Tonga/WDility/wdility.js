var WDility = {
  first: function(array){
    return array[0];
  },

  last: function(array){
    last = array.length - 1;
    return array[ last];
  },

  each: function(array, func){
    for (var i in array){
        func(array[i]);
      }
      return array
    },

  map: function(array, func){
    var newArray = array.map(func);
    return newArray;
  },

  select: function(){

  }

};
