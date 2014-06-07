describe('The calculator', function(){

  it('correctly adds two numbers', function(){
    var calculator = new Calculator();
    var num1 = 2;
    var num2 = 3;
    var actual = calculator.add(num1, num2);
    var expected = 5;
    expect(actual).toEqual(expected);
  });

  it('correctly subtracts two numbers', function(){
    var calculator = new Calculator();
    var num1 = 2;
    var num2 = 3;
    var actual = calculator.subtract(num1, num2);
    var expected = -1;
    expect(actual).toEqual(expected);
  });

  it('correctly multiplies two numbers', function(){
    var actual = calculator.multiply(num1, num2);
    var expected = 6;
    expect(actual).toEqual(expected);
  });
});
