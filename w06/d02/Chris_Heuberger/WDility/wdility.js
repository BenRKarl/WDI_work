
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
    var i = (array.length - 1);
    return array[i];
  },
  map: function(array, func) {
    var newArray = [];
    for (i in array){
      newArray.push(func(array[i]));
    }
    return newArray;
  },
  select: function(array, func) {
    var newArray = [];
    for (i in array) {
      if (func(array[i])) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  }
};


// #####Commit 2-5
// - Implement:
//   - .first(array)
//   - .last(array)
//   - .map(array, function)
//   - .select(array, function)

// ---

// #####Commit 6-7 (Bonus)
// - Implement:
//   - .reject(array, function)
//   - .unique(array)

