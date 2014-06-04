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

  reduce: function(array){
    var sum = 0;
    for (i in array){
      sum = sum + array[i];
    }
    return sum;
  },
// also
// reduce: function(array, func){
//   var memo = array.shift();
//   for  ( var i in array) {
//     memo = func(memo, array[i]);
//   }
//   return memo;
//   }
// }
  delete: function(array, val){
    for (var i in array){
      if (array[i] == val){
        var index = array.indexOf(val);
        if (index != -1){
          array.splice(index,1);
        }
      }
    }
    return array;
  },

  deleteAt: function(array, index){
    array.splice(index, 1);
    return array;
  },
  include: function(array, value){
    var in_array = false;
    for (var i in array){
      if (array[i] == value){
        in_array = true;
      }  
    }
    return in_array;
  }


};