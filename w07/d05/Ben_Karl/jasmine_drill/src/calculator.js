function calculator(num1, num2){
  this.num1 = num1;
  this.num2 = num2;
};

calculator.prototype.add = function(){
  return this.num1 + this.num2;
};

// calculator.prototype.subtract = function(){
//   return this.num1 - this.num2;
// };

// calculator.prototype.multiply = function(){
//   return this.num1 * this.num2;
// }
