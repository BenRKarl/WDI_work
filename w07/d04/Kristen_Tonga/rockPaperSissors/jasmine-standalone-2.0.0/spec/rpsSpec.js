describe ("Rock, Paper, Scissors", function() {

  it("the test works", function(){
    expect(true).toBe(true);
  });

  it("rock beats sissors", function(){
    var moveAWins = beats('rock', 'sissors');
    expect(moveAWins).toEqual(true)
  });

})
