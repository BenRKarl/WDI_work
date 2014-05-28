var WDility = {
  each: function(array, func) {
    for (i in array){
      func(array[i]);
            }
    return array;
  },
  first: function(array){
    return array[0];
},
  last: function(array){
    array[array.length-1];
},
  map: function(array, function(array){ 
    return array
},
  select: function(elem){
    return elem === elem;
}
}






// var myArray = [1, 2, 3, 4];
// var numbers = myArray.map(function (myArray) { return myArray.numbers; });

// Wdility.map(my_array, function(elem){ return elem * 2});


// var numbers = myArray.map(function (myArray) { return myArray });

// var array = [1, 2, 3, 4];

// var filtered = array.filter(function(x) { return x === x; });
// console.log(filtered);