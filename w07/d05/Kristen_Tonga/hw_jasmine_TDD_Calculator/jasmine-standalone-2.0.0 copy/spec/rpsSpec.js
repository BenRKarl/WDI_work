describe ("Calculator", function() {

  it("the test works", function(){
    expect(true).toBe(true);
  });

  it("adds numbers", function(){
    var calculation = calculator.add(2, 3);
    expect(calculation).toEqual(5)
  });

  it("subtracts numbers", function(){
    var calculation = calculator.subtract(2, 3);
    expect(calculation).toEqual(-1)
  });

  it("multiplies numbers", function(){
    var calculation = calculator.multiply(2, 3);
    expect(calculation).toEqual(6)
  })

})
