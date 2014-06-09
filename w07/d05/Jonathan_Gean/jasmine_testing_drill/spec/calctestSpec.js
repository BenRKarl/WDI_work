describe ("calculator", function(){
  it("should succesfully add", function(){
     var calculator = new Calculator(2, 3);
     var answer = calculator.add(2, 3)
    expect(answer).toEqual(5);
  });

  it("should succesfully subtract", function(){
     var calculator = new Calculator(2, 3);
     var answer = calculator.subtract(2, 3)
    expect(answer).toEqual(-1);
  });

  it("should succesfully multiply", function(){
     var calculator = new Calculator(2, 3);
     var answer = calculator.multiply(2, 3)
    expect(answer).toEqual(6);
  });

})

