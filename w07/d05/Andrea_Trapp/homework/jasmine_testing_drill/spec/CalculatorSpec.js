// http://jasmine.github.io/2.0/introduction.html

// *****   refactored code   *****

describe("Calculator", function(){
  
  var calculator;
  
  var x = 2;
  var y = 3;

  beforeEach(function(){
    calculator = new Calculator();
  })

  it("can add 2 numbers", function(){
    expect(calculator.add(x, y)).toEqual(5);
  })

  it("can subtract 2 numbers", function(){    
    expect(calculator.subtract(x, y)).toEqual(-1);
  })

  it("can multiply 2 numbers", function(){    
    expect(calculator.multiply(x, y)).toEqual(6);
  })

})



// describe("Calculator", function(){
  
//   var x = 2;
//   var y = 3;

//   it("can add 2 numbers", function(){
//     var calculator = new Calculator();
//     var result = calculator.add(x, y);
//     expect(result).toEqual(5);
//   })

//   it("can subtract 2 numbers", function(){
//     var calculator = new Calculator();
//     var result = calculator.subtract(x, y);
//     expect(result).toEqual(-1);
//   })

//   it("can multiply 2 numbers", function(){
//     var calculator = new Calculator();
//     var result = calculator.multiply(x, y);
//     expect(result).toEqual(6);
//   })

// })

