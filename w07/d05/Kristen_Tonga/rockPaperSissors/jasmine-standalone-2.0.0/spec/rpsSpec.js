describe ("Rock, Paper, Scissors", function() {

  it("the test works", function(){
    expect(true).toBe(true);
  });

  it("rock beats sissors", function(){
    var moveAWins = beats('rock', 'sissors');
    expect(moveAWins).toEqual(true)
  });

  it("paper beats rock", function(){
    var moveAWins = beats('paper', 'rock');
    expect(moveAWins).toEqual(true)
  })

  it("sissors beats paper", function(){
    var moveAWins = beats('paper', 'sissors');
    expect(moveAWins).toEqual(false)
  })

  it('tie returns undefined', function(){
    var moveAWins = beats
  })
})
