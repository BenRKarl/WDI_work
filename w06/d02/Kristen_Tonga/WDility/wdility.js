var WDility = {
  first: function(array){
    return array[0];
  },

  last: function(array){
    last = array.length - 1;
    return array[ last];
  },

  each: function(array, func){
    for (var i in array){
        func(array[i]);
      }
      return array
    },

  map: function(array, func){
    var newArray = array.map(func);
    return newArray;
  },

    // var newArray = []
    // for (var i in array) {
    //   newArray.push(func(array[i]))
    // }
    // return new Array;


  select: function(array, func){
    var newArray = [];
    for (var i in array){
      if (func(array[i]) === true){
        newArray.push(array[i]);
      }
    }
    return newArray;
  },




  // ------------------------------------------------

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

  // -----------------------------------------------

  delete: function(array, value){
    var newArray = [];
    for (var i in array){
      if (array[i] != value){
        newArray.push(array[i]);
      };
    };
    return newArray;
  },

  deleteAt: function(array, index){
    array.splice(index, 1);
    return array;
  }

    // var newArray = [];
    // for (var i in array){
    //   if (i != index){
    //     newArray.push(array[i]);
    //   }
    // }
    // return newArray;


  include: function(array, value)
    for (var in array){
      if (array[i] === value){
        return true;
      }
    }
    return false;
  }

  // return (array.indexOf(value) != -1)

  // return (value in array){
  //   return true;
  // }
  // retrun false;

  // return (value in array);

};
