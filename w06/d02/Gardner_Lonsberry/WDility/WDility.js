var WDility = {
  each: function(array, func) {
    for (i in array){
      func(array[i]);
            }
    return array
  },
  
  first: function(array){
    return array[0]
  },
  
  last: function(array){
    array[array.length-1];
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
      uniArray = array.filter(function(elem, pos){
        return array.indexOf(elem) == pos;
      });
    return uniArray
  }, 
reduce: function(array){
    sum = 0
    for (var i in array){
      sum += array[i]
    }
    return sum
  },

};





// var myArray = [1, 2, 3, 4];
// var numbers = myArray.map(function (myArray) { return myArray.numbers; });

// Wdility.map(my_array, function(elem){ return elem * 2});


// var numbers = myArray.map(function (myArray) { return myArray });

// var array = [1, 2, 3, 4];

// var filtered = array.filter(function(x) { return x === x; });
// console.log(filtered);



// function sort_unique(arr) {
//     arr = arr.sort(function (a, b) { return a*1 - b*1; });
//     var ret = [arr[0]];
//     for (var i = 1; i < arr.length; i++) { // start loop at 1 as element 0 can never be a duplicate
//         if (arr[i-1] !== arr[i]) {
//             ret.push(arr[i]);
//         }
//     }
//     return ret;
// }
// console.log(sort_unique(['237','124','255','124','366','255']));
