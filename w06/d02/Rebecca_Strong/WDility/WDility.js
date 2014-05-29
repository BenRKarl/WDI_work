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
    var newArray = [];
    for (var i in array){
      newArray.push(func(array[i]));
    }
    return newArray
  },
 select: function(array, func){
    var newArray = [];
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

  //unique: function(array){
  //   var uniqueDictionary = {};
  //   var newArray =[];
  //   for (var i in array) {
  //     uniqueDictionary[array[i]] = array[i];
  //   }
  //   for (var i in uniqueDictionary){
  //     newArray.push(uniqueDictionary[i]);
  //   }
  //   return newArray;
  // }


reduce: function(array){
    sum = 0
    for (var i in array){
      sum += array[i]
    }
    return sum
  },

};

//reduce: function(array, func){
// var memo = array.shift();
// for (var i in array){
//   memo = func(memo, array[i]);
// }
// return memo;


// };

// var array = [1, 2, 3, 4]

delete: function(array, value){
  var newArray = [];
  for (var i in array){
    if (array[i] != value){
  newArray.push(arary[i]);
  }
}
 return newArray;
}
};
// describe ("#delete", function(){
//   it("should return an array with a specified value removed", function(){
//   var actual = WDility.delete([1, 2, 3, 4, 3], 3);
//   var expected = [1, 2, 4];
//   expect(actual).toEqual(expected);
//   });
// });



deleteAt: function(array, value){
  var newArray = [];
  for (var i in array){
    if (i != value){
  newArray.push(array[i]);
  }
}
 return newArray;
}
};

// describe ("#deleteAt", function(){
//   it("should return an array with a specified index's value removed", fucntion(){
//   var actual = WDility.delete([1, 2, 3, 4], 2);
//   var expected = [1, 2, 4];
//   expect(actual).toEqual(expected);
//   });
// });












// var myArray = [1, 2, 3, 4];
// var numbers = myArray.map(function (myArray) { return myArray.numbers; });

// Wdility.map(my_array, function(elem){ return elem * 2});


// var numbers = myArray.map(function (myArray) { return myArray });

// var array = [1, 2, 3, 4];

// var filtered = array.filter(function(x) { return x === x; });
// console.log(filtered);
