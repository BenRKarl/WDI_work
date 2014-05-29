
var WDility = {
  each: function(array, func) {
    for (var i in array){
      func(array[i]);
    }
    return array
  },
  first: function(array){
    return array[0]
  },
  last: function(array){
    return array[array.length - 1 ];
  },
  map: function(array, func){
    var newArray = [];
    for (var i in array){
      newArray.push(func(array[i]));
    }
    return newArray;
  },
  select: function(array, func){
     var newArray = [];
     for (var i in array){
        if (func(array[i])){
          newArray.push(array[i]);
        }
     }
     return newArray;
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
  }
};

