var WDility = {
first: function (array) {
  return array[0];
},
last: function (array) {
  return array[array.length -1];
},
each: function (array, func) {
  for (i in array) {
    func(array[i]);
  }
  return array
},
map: function (array, func) {
  var new_array = []
  for (i in array) {
    new_array.push(func(array[i] ));
  }
  return new_array
},

select: function (array, func) {
  var new_array = []
  for (i in array) {
if (func(array[i]) == true)
    new_array.push(array[i] );
  }
  return new_array
},
unique: function (array) {
 var new_array = []
  for (i in array) {
    if (new_array.indexOf(array[i]) == -1) {
    new_array.push(array[i]);
  }
}
  return new_array
},

reduce: function (array, func) {
  var new_array = []
  for (i in array) {
  new_array.push(array[i]);  }

  return new_array


}
};
