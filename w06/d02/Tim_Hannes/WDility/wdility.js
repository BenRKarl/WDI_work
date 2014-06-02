var WDility = {
  each: function(array, func) {
    for (var i in array){
      func(array[i]);
    }
    return array
  },

  first: function(array){
    return array[0];
  },

  last: function(array){
    return array.reverse()[0];
    //OR return array[array.length -1]; .length is NOT THE SAME AS RUBY
  },

  map: function(array, func){
    var newArray = []
    for (var i in array){
      newArray.push(func(array[i]));
    }
    return newArray
  },

  select: function(array, func){
    var newArray = []
    for (var i in array){
      if (func(array[i]) == true)newArray.push(array[i]);
    }
    return newArray
  },

  unique: function(array){
      uniqueArray = array.filter(function(elem, pos){
        return array.indexOf(elem) == pos;
      });
    return uniqueArray
  },

  reduce: function(array){
    sum = 0
    for (var i in array){
      sum += array[i]
    }
    return sum
  },

  delete: function(array, value){
    var newArray = [];
    for (var i in array){
      if (array[i] != value){
        newArray.push(array[i]);
      }
    }
    return newArray
  },

  // deleteAt: function(array, index){
  //   var newArray = [];
  //   for (var i in array){
  //     if (i != index){
  //       newArray.push(array[i]);
  //     }
  //   }
  //   return newArray
  // },

  deleteAt: function(array, index){
    array.splice(index, 1);
    return array;
  },

  // include: function(array, value){
  //   for (var i in array){
  //     if (array[i] === value){
  //       return true;
  //     }
  //   }
  //   return false;
  // },

  include: function(array, value){
    return (value in array);
  },

};
