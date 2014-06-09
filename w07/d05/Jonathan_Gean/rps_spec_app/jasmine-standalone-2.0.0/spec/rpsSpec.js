describe ("Rock, Paper, Scissors", function() {

  it("the test works", function(){
    expect(true).toBe(true);
  });

  it("should increment playerA score when playerA wins and playerB's score is reset", function(){
    var moveAwins = beats("rock", "scissors");

    expect(playerAscore).toEqual(1)
  });
  it("paper beats rock", function(){
    var moveAwins = beats("paper", "rock");
    expect(moveAwins).toEqual(true)
  });
  it("scissors beats paper", function(){
    var moveAwins = beats("scissors", "paper");
    expect(moveAwins).toEqual(true)
  });
  it("scissors loses to rock", function(){
    var moveAloses = beats("scissors", "rock");
    expect(moveAloses).toEqual(false)
  });

  it("player1 score increments when player 1 wins", function(){
      var playerAscore = 0;
      var playerBscore = 1;
    beats("scissors", "paper");
    expect(playerAscore).toEqual(1)
  });
  it("player2 score decreases when player 1 wins", function(){
      var playerAscore = 0;
      var playerBscore = 1;
    beats("scissors", "paper");
    expect(playerBscore).toEqual(0)
  });



})
