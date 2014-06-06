describe("Rock, Paper, Scissors", function(){
  it("works", function(){
    expect(true).toBe(true);
  });

  it('rock beats scissors', function(){
    var winningMove = shoot("rock","scissors");
    expect(winningMove).toEqual("rock");
  });

})

