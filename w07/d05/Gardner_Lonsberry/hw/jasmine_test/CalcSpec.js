describe("Calculator", function(){
  it("works", function(){
    expect(true).toBe(true);
  });

 it("2 + 2 = 5", function(){
  actual   = calculator(2, 3, "add");
  expected = 5;
  expect(actual).toBe(expected)
  });

it("2 - 3 = 5", function(){
  actual = calculator(2, 3, "subtract");
  expected = -1;
  expect(actual).toBe(expected)
});

it("2 x 3 = 6", function(){
  actual = calculator(2, 3, "multiply");
  expected = 6;
  expect(actual).toBe(expected)
});

});