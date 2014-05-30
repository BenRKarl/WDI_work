var WDility = {
  each: function(array, func) {
    for (i in array) {
      func(array[i]);
    }
    return array;
  },
  first: function(array) {
    return array[0];
  },
  last: function(array) {
    len = array.length;
    return array[len-1];
  },
  map: function(array, func) {
    newArray = [];
    for (i in array) {
      newArray.push(func(array[i]));
    }
    return newArray;
  },
  select: function(array, func) {
    newArray = [];
    for (i in array) {
      if (func(array[i])) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  unique: function(array) {
    newArray = [];
    for (i in array) {
      var count = 0;
      for (j in newArray) {
        if (newArray[j] == array[i]) {
          count = count +1;
        }
      }
      if (count==0) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  reduce: function(array,func) {
    value = 0;
    for (i in array) {
      value = func(value, array[i]);
    }
    return value;
  },


  delete: function(array, value) {
    var newArray = []
    for (i in array) {
      if (array[i] != value) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  deleteAt: function(array, index){
    var newArray = [];
    for (var i in array){
      if ( i != index){
        newArray.push(array[i]);
      }
    }
    return newArray;
  },

  include: function(array, val){
    for (var i in array){
      if (array[i] === val){
        return true;
      }
    }
    return false;
  }

};




testArray = [2,3,4,5];
testFunc = function(x) {console.log(x*2);}

// ourFunc = function(a,b) {return (a*b);}


// WDility.each(testArray, testFunc)
console.log(WDility.first(testArray));
console.log(WDility.last(testArray));
// console.log(WDility.select(testArray));
// console.log(WDility.reduce(testArray, ourFunc));