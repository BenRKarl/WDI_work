var WDility = {
  each: function (array, func) {
    for (var i in array) {
      func(array[i]);
    }
    return array;
  },
  first: function(array) {
    return array[0];
  },
  last: function(array) {
    return array[array.length - 1];
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
    for (var i in array){
      if (func(array[i])) {
        newArray.push(array[i]);
      }
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
  unique: function(array) {
    var newArray = [];
    for (var i in array) {
      var counter = 0;
      for (j in newArray) {
        if (array[i] === newArray[j]) {
          counter += 1;
        }
      }
      if (counter === 0) {
        newArray.push(array[i]);
      }
    }  
    return newArray;
  },
  delete: function(array, value) {
    var newArray = [];
    for (var i in array) {
      if (array[i] != value) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  deleteAt: function(array, index) {
    var newArray = [];
    for (var i in array) {
      if (i != index) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  include: function(array, value) {
    return (value in array);
  }
};

  













