
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
  reduce: function(array, func) {
    if (array.length > 1) {
      value = func(array[0], array[1]);
    } else {
      value = array[0];
    }
    for (i in array) {
      if (i > 1) {
        value = func(value, array[i]);
      }
    }
    return value;
  },
  delete: function(array, value) {
    var newArray = [];
    for (var i in array) {
      if (value != array[i]) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  deleteAt: function(array, index) {
    var newArray = [];
    for (var i in array) {
      console.log(i);
      if (i != index) {
        newArray.push(array[i]);
      }
    }
    return newArray;
  },
  include: function(array, value) {
    for (var i in array) {
      if (array[i] == value) {
        return true;
      }
    }
    return false;
  }
};

testArray = [1,2,3,4];
testFunc = function(x) {console.log(x*2);}

ourFunc = function(a,b) {return (a*b);}
ourSub = function(a,b) {return (a-b);}
