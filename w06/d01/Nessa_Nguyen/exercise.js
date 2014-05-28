// TRIANGLE PERIMETER

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 5
};
function triangleP(atriangle) {
  var p = 0;
  p = atriangle['sideA'] + atriangle['sideB'] + atriangle['sideC'];
  console.log(p);  
}
triangleP(triangle); 
var current_temp = 80;


// AIR CONDITIONING
function conditionAir(desired_temp) {
  if (current_temp > desired_temp) {
    console.log('Turn up the AC please!')
  } else if (current_temp < desired_temp) {
    console.log('Turn off the AC please.')
  } else {
    console.log('The temp is perfect.')
  }
}
conditionAir(74);



fave_djs = ['Alesso', 'David Guetta', 'Avicii', 'Tiesto', 'Nicky Romero', 'Krewella']// 
function iLove(array) {
  for (var i = 1; i < array.length; i++) {
    statement = array[i - 1] + ' is my #' + i + ' favorite DJ.';
    console.log(statement);
  }
}

iLove(fave_djs);



var string = "i like french fries"

function reverse(string) {
  reversed_string = ''

  for (var i = string.length - 1; i >= 0; i--) {
    reversed_string = reversed_string + string[i];    
  }
  console.log(reversed_string);
}

reverse(string);

 

// REMOVE VOWELS
function noVowel(string) {
  string = string.replace(/[aeiou]/ig,'');
  console.log(string);  
}
noVowel(string);


// Replace
var theString = 'the sun is shining on the river'
function replaceThe(string) {
  string = string.replace('the', 'the great');
  console.log(string)
}
replaceThe(theString);



// Capitalize string
function capitalize(string) {
  var new_string = '';
  for (var i = 0; i < string.length; i++) {
    if (i == 0 || string[i-1] == ' ') {
      new_string = new_string + string[i].toUpperCase(); 
    } else {
    new_string = new_string + string[i];   
    } 
  }
  string = new_string
  console.log(string); 
}

capitalize(string);

