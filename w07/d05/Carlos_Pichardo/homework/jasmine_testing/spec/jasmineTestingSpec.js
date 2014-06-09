describe("Calculator calculates", function() {

  it("adds a number from another", function() {
    var addition = calculator.add(2, 3);
    expect(addition).toBe(5);
  })

  it("subtracts a number from another", function() {
    var subtraction = calculator.subtract(2, 3);
    expect(subtraction).toBe(-1);
  })

  it("multiplies a number by another", function() {
    var multiplication = calculator.multiply(2, 3);
    expect(multiplication).toBe(6);
  })

  


})

//PASSING TEST CODE
// var calculator = {

//   add: function(a, b){
//     return (a + b);
//   },

//   subtract: function(a, b){
//     return (a - b);
//   },

//   multiply: function(a, b){
//     return (a * b);
//   };
// }