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
    return array[array.length-1];
  },

  map: function(array, func) {
    var arr2 = [];
    for (i in array){
      arr2[i] = func(array[i]);

    }
    return arr2;
  },

  select: function(array, func){
    var arr2= [];
    for (i in array){
      if (func(array[i]) == true){
        arr2.push(array[i]);
      }
    }
    return arr2;

  },

  unique: function(array){
    var arr2 = [];
      for (i in array){
        if (arr2.indexOf(array[i]) == -1){
          arr2.push(array[i]);
        }
      }
    return arr2;
  },

  reduce: function(array, func){
    var sum = 0;
    for (i in array){
      sum = sum + array[i];
    }
    return sum;
  },

  delete: function(array, value){
    var newArray = [];
    for (var i in array){
      if (array[i] != value){
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  deleteAt: function(array, index){
    array.splice(index, 1);
    return array;
  },

  include: function(array, value){
    return (array.indexOf(value) != -1);
  }

};

