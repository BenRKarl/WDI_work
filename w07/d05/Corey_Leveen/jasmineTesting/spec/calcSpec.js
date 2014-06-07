describe("Calculator", function() {

  it('can add two numbers', function(){
    var a = 5;
    var b = 2;
    var sum = calculator.add(a, b);
    expect(sum).toEqual(7);
  });

  it('can subtract two numbers', function(){
    var a = 5;
    var b = 2;
    var difference = calculator.subtract(a, b);
    expect(difference).toEqual(3);
  });

  it('can multiply two numbers', function(){
    var a = 5;
    var b = 2;
    var product = calculator.multiply(a, b);
    expect(product).toEqual(10);
  });

  it('can add two numbers', function(){
    var a = 5;
    var b = 2;
    var quotient = calculator.divide(a, b);
    expect(quotient).toEqual(2.5);
  });

});
