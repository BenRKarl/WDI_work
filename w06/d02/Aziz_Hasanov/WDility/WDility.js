var WDility = {
  first: function(array) {
    return array[0];
  },
  last: function(array) {
    return array[array.length - 1];
  },
  each: function(array, func) {
    // array.each { |i| i }
    for (var i in array) {
      func(array[i]);
    }
    return array;
  },
  map: function(array, func) {
    var newArray = [];
    for (var i in array) {
      var block = func(array[i]);
      newArray.push(block);
    }
    return newArray;
  },
  select: function(array, func) {
    var newArray = [];
    for (var i in array) {
      if (array[i] > 2) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  }
}