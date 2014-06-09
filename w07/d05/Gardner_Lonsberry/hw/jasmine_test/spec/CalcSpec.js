describe("Calculator", function(){
  it("works", function(){
    expect(true).toBe(true);
  });

 it("adds 2 numbers", function(){
  var actual = calculator.add(2,3);
  var expected = 5;
  expect(actual).toBe(expected);
  });

it("subtracts 1 number from the other", function(){
  var actual = calculator.subtract(2,3);
  var expected = -1;
  expect(actual).toBe(expected)
});

it("multiply 2 numbers", function(){
  var actual = calculator.multiply(2,3);
  var expected = 6;
  expect(actual).toBe(expected)
});

});