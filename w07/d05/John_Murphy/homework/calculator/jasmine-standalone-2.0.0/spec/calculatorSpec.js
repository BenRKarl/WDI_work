// Here is the goal:
// calculator.add(2, 3) should return 5
// calculator.subtract(2, 3) should return -1
// calculator.multiply(2, 3) should return 6
// FOLLOW THIS PATTERN (This is the exercise)
// Write a failing test (RED)
// Write code to pass the test (GREEN)
// Commit
// Refactor your code
// Commit

describe("calculator", function() {
  // var player;
  // var song;

  // beforeEach(function() {
  //   player = new Player();
  //   song = new Song();
  // });

  it("adds numbers", function() {
    result = calculator.add(2, 3)
    expect(result).toEqual(5);
  });

  it("subtracts numbers", function() {
    result = calculator.subtract(2, 3)
    expect(result).toEqual(-1);
  });

  it("multiplies numbers", function() {
    result = calculator.multiply(2, 3)
    expect(result).toEqual(6);
  });

});
