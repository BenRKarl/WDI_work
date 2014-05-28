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
  return array[array.length -1]
 },
 map: function(array, func) {
      var new_array = []
    for (i in array){
     new_array.push(func(array[i]));
    }
    return new_array
  },
};
