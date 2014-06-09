describe ("Calculator", function() {

  var calculator, num1, num2;

  beforeEach(function(){
    calculator = new Calculator;
    arg1 = 5;
    arg2 = 4;
  });

  it ("adds two arguments", function (){
    var actual = calculator.add(arg1,arg2);
    var expected = 9;
    expect(actual).toBe(expected);
  });

  it ("shows difference between two arguments", function (){
    var actual = calculator.subtract(arg1,arg2);
    var expected = 1;
    expect(actual).toBe(expected);
  });

  it ("shows difference between two arguments", function (){
    var actual = calculator.multiply(arg1,arg2);
    var expected = 20;
    expect(actual).toBe(expected);
  });

})

// describe ("Calculator", function() {
//   it ("shows the difference between two arguments", function (){
//     var a = 2;
//     var b = 2;

//     var actual = subtract(a,b);
//     var expected = 0;
//     expect(actual).toBe(expected);
//   })
// })

// describe ("Calculator", function() {
//   it ("shows the difference between two arguments", function (){
//     var a = 2;
//     var b = 2;

//     var actual = subtract(a,b);
//     var expected = 0;
//     expect(actual).toBe(expected);
//   })
// })

