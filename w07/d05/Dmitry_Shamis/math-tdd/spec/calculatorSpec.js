describe("Calculator", function() {
  it("adds", function () {
    var sum = calculator.add(2, 3);
    expect(sum).toBe(5);
  });

  it("subtracts", function () {
    var difference = calculator.subtract(2, 3);
    expect(difference).toBe(-1);
  });
});
