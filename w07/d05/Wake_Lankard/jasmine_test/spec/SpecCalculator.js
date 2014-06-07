describe("Calculator", function(){
  it("works", function(){
    expect(true).toBe(true);
  });

 it("2 + 3 = 5", function(){
  actual   = calculator(2, 3, "add");
  expected = 5;
  expect(actual).toBe(expected)
  });
});