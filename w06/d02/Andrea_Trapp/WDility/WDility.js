
var WDility = {
  each: function(array, func) {    
    for (var i in array){
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
    var newArray = [];
    for (var i in array){
      // newArray[i] = func(array[i]);
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

  // reduce: function(array, func) {
  //   var result = 0;
  //   for (var i in array){
  //     result = result + array[i];
  //   }
  //   return result;
  // },

  reduce: function(array, func){
    var memo = array.shift();
    for (var i in array){
        memo = func(memo, array[i]);
    };
    return memo;
  },

  unique: function(array) {
    var newArray = []; 

    for (var i in array){  
      var counter = 0;

      for (var j in newArray){
        if (array[i] === array[j]) {
          counter += 1;
        }
      }
      if (counter === 0) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  // unique: function(array){
  //   var uniqueDictionary = {};
  //   var newArray = [];
  //   for (var i in array){
  //     uniqueDictionary[array[i]] = array[i];
  //   }
  //   for (var i in uniqueDictionary){
  //     newArray.push(uniqueDictionary[i]);
  //   }
  //   return newArray;
  // }

  delete: function(array, value){
    var newArray = [];

    for (var i in array){
      if (array[i] !== value){       
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  deleteAt: function(array, index){
    var newArray = [];

    for (var i in array){
      if (i != index){
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  // include: function(array, value){   
  //   for (var i = 0; i < array.length; i++){
  //     if (array[i] === value){
  //        return true;
  //     }
  //   };
  //   return false;
  // }

  include: function(array, value){   
    if (value in array){
      return true;
    };
    return false;
  }



};


      