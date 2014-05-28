var WDility = {
    each: function(array, func) {
        for (var i in array) {
            func(array[i]);
        }
        return array
    },
    first: function(array) {
        return array[0];
    },
    last :function(array) {
        return array[array.length-1];
    },
    
};