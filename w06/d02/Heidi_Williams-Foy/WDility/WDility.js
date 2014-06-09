var WDility ={
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
	},
	unique: function(array){
		var uniqueDictionary = {};
		var newArray = [];
		for (var i in array){
			uniqueDictionary[array[i]] = array[i];
		}

		for (var i in uniqueDictionary){
			newArray.push(uniqueDictionary[i]);
		}
		return newArray;

	},

	reduce: function(array, func){
		var memo = array.shift();
		for (var i in array){
			memo = func(memo, array[i]);
		}
		return memo;
	},
	delete: function(array, value){
	 	var newArray = [];
	 	for (var i in array){
	 		if (){
	 			newArray.push(array[i]);
 		}
	 }
	 return newArray;
},

    deleteAt: function(array, index){
    	var newArray = []
    	for (var i in array){
    	if (i != index){
    	newArray.push(array[i]);

    	}	
    }
    return newArray;
  }
};


// var WDility = {
// 	first: function(array){
// 		return array[0];
// 	},
// 	last: function(array){
// 		length= array.length;
// 		return array[ length - 1 ];
// 	},
// 	each: function(array, func){
// 		for (var i in array){
// 			func(array[i]);
// 		}
// 	 	return array
// 	 },
// 	map:function(array, func) {
// 		var newArray = array.map(func);
// 		return newArray
// 	},
// 	select:function(array, func){
// 		var newArray = [];
// 		for (var i in array){
// 			if (array[i] > 2) {
// 				newArray.push(array[i]);
// 			}
// 		}
// 		return newArray;
// 	},
// 	unique: function(array){
// 		var uniqueDictionary = {}
// 		var newArray = [];
// 		for (var i in array){
// 			uniqueDictionary[array[i]) = array[i];
// 		}{
// 			for (var i uniqueDictionary){
// 				newArray.push(uniqueDictionary[i]);
// 			}
// 			return newArray;
// 		},

// 		reduce: function(array,func){
// 			var memo = array.shift();
// 			for (var in array){
// 				memo = func(memo, array[i]);
// 			}
// 			return memo;
// 		},
// 	 // delete: function(array, func){
// 	 // 	var newArray = [];

// 	 // }
// };

// /* describe("#delete", function(){
//     it("should return an array with a specified value removed", function(){
//       var actual = WDility.delete([1,2,3,4,3], 3);
//       var expected = [1, 2, 4];

/*Kristin
/*deleteAt: function(array, func){
    array.splice(func, 1);
    return array;
  }
Dmitry
    deleteAt: function (array, index) {
    array.splice(index, 1);
    return array;
  }