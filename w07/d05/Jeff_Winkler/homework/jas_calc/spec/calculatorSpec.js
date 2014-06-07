describe("Calculator",function() {
  it ("adds", function(){
    var result = calculator.add(2,3);
    expect(result).toBe(5);
  });
  it ("subtracts", function(){
    var result = calculator.subtract(2,3);
    expect(result).toBe(-1);
  });
  it ("multiplies", function(){
    var result = calculator.multiply(2,3);
    expect(result).toBe(6);
  });
});
