var my_array = [1, 2, 3, 4];

var WDility = {

// WDility.first(my_array);


first: function(array){
  return array[0];
},

last: function(array){
  return array[array.length-1];
},

each: function(array, func) {
  for (i in array){
    func(array[i]);
  }
  return array;
},

map: function(array, func) {
  arr = new Array(array.length);
  for (i in array){
    arr[i] = func(array[i]);
  }
  return arr;
}


};
