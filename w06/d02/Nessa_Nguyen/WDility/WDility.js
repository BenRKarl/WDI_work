var WDility = {
  each: function(array, func) {
    for (var i = 0; i < array.length; i++) {
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
    var new_array = [];
    for (var i = 0; i < array.length; i++) {
      new_array.push(func(array[i]));
    } 
    return new_array;
  }, 

  select: function(array, func) {
    var new_array = [];
    for (var i = 0; i < array.length; i++) {
      if (func(array[i]) == true) {
        new_array.push(array[i]) ;  
      }      
    } 
    return new_array;
  },

  reject: function(array, func) {
    var new_array = [];
    for (var i = 0; i < array.length; i++) {
      if (func(array[i]) == false) {
        new_array.push(array[i]) ;  
      }      
    } 
    return new_array;
  },

  reduce: function(array, func) {
    var result = 0;
    for (var i = 0; i < array.length; i++) {
      result = func(result, array[i]);
    } 
    return result;
  },  

  unique: function(array) {
    new_array = [];
    for (var i = 0; i < array.length; i++) {
      for (var j = i + 1; j < array.length; j++) 
        count = 0;    
        if (array[i] == array[j]) {
          count = count + 1;
        }  
        if (count == 0) {
          new_array.push(array[i]); 
        } // compare

    } // for i loop
    return new_array;
  }          
};

