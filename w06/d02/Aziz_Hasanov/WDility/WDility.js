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
  },

  // did in class
  unique: function(array) {
    var uniqueDictionary = {};
    var newArray = [];
    for (var i in array) {
      uniqueDictionary[array[i]] = array[i];
    }
    for (var i in uniqueDictionary) {
      newArray.push(uniqueDictionary[i]);
    }
    return newArray;
  },
  reduce: function(array, func) {
    var memo = array.shift();
    for (var i in array) {
      memo = func(memo, array[i]);
    }
    return memo;
  },
  delete: function(array, index) {
    var newArray = [];
    for (var i in array) {
      if (array[i] != index) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  // deleteAt: function(array, index) {
  //   var newArray = [];
  //   for (var i in array) {
  //     if (i != index) {
  //       newArray.push(array[i]);
  //     }
  //   }
  //   return newArray;
  // },
  // another cleaner way
  deleteAt: function (array, index) {
    array.splice(index, 1);
    return array;
  }
}

