// ##Part 5
// ###JavaScript Calculator
// - Create a calculator in JavaScript.
// - Support the following operations: addition, subtraction, multiplication, and division.

function addition(x,y) {
  return x + y;
}

function subtraction(x, y){
  return x - y;
}

function multiplication(x, y){
  return x*y;
}

function division(x, y){
  return x/y;
}

console.log("2 + 6 equals " + addition(2,6))
console.log("2 - 2 equals " + subtraction(2,2))
console.log("2 * 5 equals " + multiplication(2,5))
console.log("2 / 2 equals " + division(2,2))

function calculator(operator, x, y){
  return operator(x, y);
}

console.log("5 * 9 equals " + calculator(multiplication,5,9))
