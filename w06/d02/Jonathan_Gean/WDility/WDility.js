var WDility = {
  each: function(array, func) {
    for (i in array){
      func(array[i]);
    }
    return array
  },
 first: function(array){
  return array[0]
 },
 last: function(array){
  return array[array.length -1]
 },
 map: function(array, func) {
      var new_array = []
    for (i in array){
     new_array.push(func(array[i]));
    }
    return new_array
  },
select: function(array, func) {
      var new_array = []
    for (i in array){
     if ((func(array[i])) == true) {
      new_array.push(array[i]);
    }
    }
    return new_array
  },
unique: function(array) {
  new_array = []
    for (i in array){
        if (new_array.indexOf(array[i]) == -1){
          new_array.push(array[i]);
        }
      }
    return new_array
  },
  reduce: function(array, func) {
    var memo = array.shift();
    for (var i in array){
      memo = func(memo,array[i])
    }
    return memo
  },
  delete: function(array, value) {
    var newArray = [];
    for (var i in array){
      if ( array[i] != value){
        newArray.push(array[i]);
      }
      }
      return newArray

  },

  deleteAt: function(array, index){
    array.splice(index, 1);
    return array;
  },

  include: function(array, value){
    for (var i in array){
      if ( array[i] === value){
        return true;
      }
    }
    return false;
  }

};
