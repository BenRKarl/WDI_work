
function calculator(x, y, operation) {
  switch (operation){
  case 'add':
    console.log(x+y);
    break;
  case 'subtract':
    console.log(x-y);
    break;
  case 'multiply':
    console.log(x*y);
    break;
  case 'divide':
    console.log(x/y);
    break;
  default:
    console.log('Please provide add, subtract, multiply, or divide.');
  }
}

calculator(2,3,'add');
calculator(2,3,'subtract');
calculator(2,3,'multiply');
calculator(2,3,'divide');


