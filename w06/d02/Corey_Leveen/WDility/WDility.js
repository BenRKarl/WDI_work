var my_array = [1, 2, 3, 4];

var WDility = {

  first: function(array){
    return array[0];
  },

  last: function(array){
    return array[array.length-1];
  },

  each: function(array, func) {
    for (i in array){
      func(array[i]);
    }
    return array;
  },

  map: function(array, func) {
    arr = new Array(array.length);
    for (i in array){
      arr[i] = func(array[i]);
    }
    return arr;
  },

  select: function(array, func) {
    arr = new Array;
    for (i in array){
      if (func(array[i]) == true) {
        arr.push(array[i]);
      }
    }
    return arr;
  },

  unique: function(array){
    var uniqueDictionary = {};
    var newArray = [];
    for (var i in array){
      uniqueDictionary[array[i]] = array[i];
    }
    for (var i in uniqueDictionary){
      newArray.push(uniqueDictionary[i]);
    }
    return newArray;
  },

  reduce: function(array, func){
    var memo = array.shift();
    for (var i in array){
      memo = func(memo, array[i]);
    }
    return memo;
  },


// does not work yet

  delete: function(array, val){
    for (var i in array){
      if (val === array[i]){
        delete array[i];
      }
    }
    return array;
  },

  include: function(array, value){
    for (var i in array){
      if (array[i] === value){
        return true;
      }
    }
    return false;
  }

};
