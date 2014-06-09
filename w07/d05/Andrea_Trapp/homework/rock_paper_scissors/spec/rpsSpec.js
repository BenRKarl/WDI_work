// http://jasmine.github.io/2.0/introduction.html

describe("Rock, Paper, Scissors", function(){

  var match; 
  var foo;
 
  beforeEach(function(){
    match = new RpsMatch();
  
    foo = {
      scorePlayer1: 3,
      scorePlayer2: 0,
      sequenceCount: 3
    };

  });


  it("has a winning condition, where rock crushes scissors", function(){
    var winningMove = match.playSequence("rock", "scissors");   
    expect(winningMove).toEqual("rock");
  })

  it("has a winning condition, where scissors cut paper", function(){
    var winningMove = match.playSequence("scissors", "paper");
    expect(winningMove).toEqual("scissors");
  }) 

  it("has a winning condition, where paper covers rock", function(){
    var winningMove = match.playSequence("paper", "rock");
    expect(winningMove).toEqual("paper");
  }) 

  it("has a draw, where the moves are equal", function(){
    var winningMove = match.playSequence("paper", "paper");
    expect(winningMove).toEqual(false);
  })
  
  it("has a winner, if they have three sequential victories", function(){ 
    expect(foo).toEqual(jasmine.objectContaining({
      scorePlayer1: 3, scorePlayer2: 0, sequenceCount: 3
    }))
  })

})

