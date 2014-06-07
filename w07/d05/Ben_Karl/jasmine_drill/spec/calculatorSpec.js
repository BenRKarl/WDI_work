describe('The calculator', function(){

  beforeEach(function(){
    var calculator = new calculator(2, 3);
  });

  it('correctly adds two numbers', function(){
    var actual = calculator.add();
    var expected = 5;
    expect(actual).toEqual(expected);
  });

  it('correctly subtracts two numbers', function(){
    var actual = calculator.subtract();
    var expected = -1;
    expect(actual).toEqual(expected);
  });

  it('correctly multiplies two numbers', function(){
    var actual = calculator.multiply();
    var expected = 6;
    expect(actual).toEqual(expected);
  });
})
