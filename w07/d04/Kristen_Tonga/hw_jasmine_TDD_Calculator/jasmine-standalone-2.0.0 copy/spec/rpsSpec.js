describe ("Calculator", function() {

  it("the test works", function(){
    expect(true).toBe(true);
  });

  it("adds numbers", function(){
    var calculation = calculator.add(2, 3);
    expect(calculation).toEqual(5)
  });

})
