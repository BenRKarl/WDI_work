var WDility = {
  first: function (array) {
    return array[0];
  },
  last: function (array) {
    return array[array.length -1];
  },
  each: function (array, func) {
    for (i in array){
      func(array[i]);
    }
    return array
  },

};
