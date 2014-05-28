switch (operation) {        // requries user input, need to rethink approach, start smaller next time.s
  case 'addition':
    function add(a, b)      // defined not alled
      return a + b;         // explains what to do, but why when you can define a method and just call it?
    break;
  case 'subtraction':
    function minus(a, b)
      return a - b;
    break;
  case 'division':
    function divide(a, b)
      return a % b;
    break;
  case 'multiplication':
    function multiply(a, b)
      return a * b;
    break;
  default:
    console.log("I'm sorry I didn't get that, what did you want to do?");
}

var operation = 'add'
var a = -6
var b = 3

function calculator (operation, a, b) {
  var result = '';

  switch (operation) {
    case 'add':
      result = add(a,b);
      break;
    case 'subtract':
      result = minus(a,b);
      break;
    case 'divide':
      result = divide(a,b);
      break;
    case 'multiply':
      result = multiply(a,b);
      break;
    default:
      result = 'try again.'
  }
  console.log(result)
}

  function add(a,b) {
    return a + b;
  }

  function minus(a,b) {
    return a - b;
  }

  function divide(a, b) {
    return a / b;
  }

  function multiply(a, b) {
    return a * b;
  }
