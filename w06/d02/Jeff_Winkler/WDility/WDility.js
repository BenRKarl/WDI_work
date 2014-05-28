
var WDility = {
  each: function(array, func) {
    for (i in array) {
      func(array[i]);
    }
    return array
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
    return newArray
  },
  select: function(array, func) {
    newArray = [];
    for (i in array) {
      if (func(array[i])) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  }

};

testArray = [2,3,4,5];
testFunc = function(x) {console.log(x*2);}

// WDility.each(testArray, testFunc)
console.log(WDility.first(testArray));
console.log(WDility.last(testArray));
console.log(WDility.select(testArray));




