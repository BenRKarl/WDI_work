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
      var j = i + 1;  
      for (; j < array.length; j++) {    
        if (array[i] == array[j]) {
          break;
        }  
      }  
      if (j == array.length) {
        new_array.push(array[i]); 
      } 
    } 
    new_array = new_array.sort();
    return new_array;
  },

  delete: function(array, value) {
    var new_array = [];
    for (var i = 0; i < array.length; i++) {
      if (array[i] != value) {
        new_array.push(array[i]) ;  
      }      
    } 
    return new_array;
  },

  deleteAt: function(array, index) {
    array.splice(index, 1);
    return array;
  }, 
  
  include: function(array, num) {
    for (var i = 0; i < array.length; i++) {
      if (array[i] === num) {
        return true;
      }
    }
    return false;
  }               
};

