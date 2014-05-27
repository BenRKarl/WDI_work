function calculator(x, y, func){
  var output;

  switch(func) {
    case 'addition':
      output = x + y;
      break;
    case 'subtraction':
      output = x - y;
      break;
    case 'multiplication':
      output = x * y;
      break;
    case 'division':
      if (y != 0){
        output = x / y;
      } else {
        output = "division by zero error.";
      }
      break;
    default:
      output = "invalid input.";
  }

  return output;
}

console.log("3 + 2 = " + calculator(3,2,"addition"));
console.log("3 - 2 = " + calculator(3,2,"subtraction"));
console.log("3 * 2 = " + calculator(3,2,"multiplication"));
console.log("3 / 0 = " + calculator(3,0,"division"));
console.log("6 - 2 = " + calculator(6,2,"division"));

