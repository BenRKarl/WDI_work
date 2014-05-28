function calculate(operation, arg1, arg2) {
  switch(operation) {
    case "multiply":
      return arg1*arg2;
      break;
    case "divide":
      return arg1 / arg2;
      break;
    case "add":
      return arg1 + arg2;
      break;
    case "subtract":
      return arg1 - arg2;
      break;
    default
      console.log("That's not real math...");
  }
}

calculate("add", 2, 4)
