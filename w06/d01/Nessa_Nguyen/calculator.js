function Calculator(num1, num2, operation) {
  var result = 0;
  if (operation == 'add') {
    result = num1 + num2;
  } else if (operation == 'subtract') {
    result = num1 - num2;
  } else if (operation == 'multiply') {
    result = num1 * num2;
  } else if (operation == 'divide') {
    result  = num1 / num2;
  } else {
    result = "That's not a math operation";
  }
  
  console.log(result);  
}

Calculator(10, 77, 'multiply');
Calculator(10, 77, 857);
