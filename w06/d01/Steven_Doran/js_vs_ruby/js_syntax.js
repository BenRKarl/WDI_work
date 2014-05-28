var myJSNameArray = ['Lich', 'Bod', 'Glennifer'];

function multiply(x,y){
    return (x * y);
}

var multiply = function multiply(x,y){
    return (x * y);
};


function greet(joyFactor){
    if (joyFactor > 10){
        var note = 'I am SOOO happy!';
    } else if (joyFactor > 0){
        var note = 'I am happy!';
    } else {
        var note = 'I am meh.';
    }
    return note
}

var day = 'Tuesday'
switch (day){
    case 'Monday':
    cosole.log('Happy');
    break;
    case 'Tuesday':
    console.log('Morose');
    break;
    case 'Friday':
    console.log('I am in love');
    break;
    default:
    console.log('Today does not count');
}


var myNameArray = ['Lichard', 'de', 'Gray'];

for (var indx in myNameArray){
    console.log(myNameArray[indx] + '... is part of the name');
}

for (var indx = 0; indx < myNameArray.length; indx++){
    console.log( myNameArray[indx] + '... is part of the name');
}

myNameArray.forEach(function(nameItself, indx){
    console.log( nameItself + '... is part of the name');
    console.log( myNameArray[indx] + '... is part of the name');
})

var myObject = { name: 'Lichard', age: 3, hobby: 'Learning Javascript' };
myObject['name'];
myObject.name;







