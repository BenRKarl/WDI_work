var WDility = {

each: function(array, func) {
    for (i in array){
      func(array[i]);
    }
    return array
  },

  first: function(array){
  	return array[0];
  	
  },

  last: function(array){
  	return array[array.length - 1];
  },

  map: function(array, func){
  	var arr = []
  	for (i in array){
  		arr.push(func(array[i]));
	}
  	return arr;
  },

  select: function(array, func){
  	var arr = []
  	for (i in array){
  		if ((func(array[i])) == true) {
  			arr.push(array[i]);
  		}
  	}
  	return arr;
  }

  // reduce: function(array, function){

  // },

  // unique: function(array){

  // }

}