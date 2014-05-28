function calculator(operation, x, y){

firstnum = "Please enter the first number you'd like to ";
secondnum = "Please enter the second number you'd like to ";

  switch (operation) {
    case 'add':
      //x = prompt(firstnum + "add.");
      //y = prompt(secondnum + "add.");
      return x + y;
      break;

    case 'subtract':
      //x = prompt(firstnum + "subtract.");
      //y = prompt(secondnum + "subtract.");
      return x - y;
      break;

    case 'multiply':
      //x = prompt(firstnum + "multiply.");
      //y = prompt(secondnum + "multiply.");
      return x * y;
      break;

    case 'divide':
    //x = prompt(firstnum + "divide.");
    //y = prompt(secondnum + "divide.");
      return x / y;
      break;

    default:
      console.log("Please call the function again with a valid operation.");
  }

}
