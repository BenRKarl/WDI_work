var WDility = {
	first: function(array){
		return array[0];
	},
	last: function(array){
		length= array.length;
		return array[ length - 1 ];
	},
	each: function(array, func){
		for (var i in array){
			func(array[i]);
		}
	 	return array
	 },
	map:function(array, func) {
		var newArray = array.map(func);
		return newArray
	},
	select:function(array, func){
		var newArray = [];
		for (var i in array){
			if (array[i] > 2) {
				newArray.push(array[i]);
			}
		}
		return newArray;
	}
};