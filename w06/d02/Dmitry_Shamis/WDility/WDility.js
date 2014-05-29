var WDility = {
  first: function (array) {
    return array[0];
  },

  last: function (array) {
    return array[array.length - 1];
  },

  each: function (array, func) {
    for (var i in array){
      func(array[i]);
    }
    return array
  },

  map: function (array, func) {
    var newArray = []
    for (var i in array) {
      newArray.push(func(array[i]));
    }
    return newArray
  },

  select: function (array, func) {
    var newArray = []
    for (var i in array) {
      if (func(array[i]) == true)
        newArray.push(array[i]);
    }
    return newArray
  },

  unique: function (array) {
    var newArray = []
    for (var i in array) {
      if (newArray.indexOf(array[i]) === -1) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  reduce: function (array, func) {
    var memo = array.shift();
    for (var i in array){
      memo = func(memo, array[i]);
    }
    return memo
  },

  delete: function (array, value) {
    var newArray = [];
    for (var i in array) {
      if (array[i] != value) {
        newArray.push(array[i]);
      }
    }
    return newArray
  },

  deleteAt: function (array, index) {
    array.splice(index, 1);
    return array;
  }
};




