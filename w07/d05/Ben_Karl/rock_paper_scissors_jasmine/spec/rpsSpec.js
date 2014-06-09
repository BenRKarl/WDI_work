describe("Rock, Paper Scissors", function(){
  var player1 = new Player('1');
  var player2 = new Player('2');

  it("displays the number of player wins after game start", function(){
    //need to initiate new game
    setFixtures("<h3 class='player1-score'></h3>");
    var startGameDomElement = $('.player1-score').html(player1.wins);
    expect(startGameDomElement.html()).toEqual('0');
  });

  it("keeps track of wins and losses", function(){
    player1.choice = 'rock';
    player2.choice = 'scissors';
    rpsMatch(player1, player2);
    expect(player1.wins).toEqual(1);
  });

  it('if player1 loses player2\'s score increases by one', function(){
    player1.choice = 'rock';
    player2.choice = 'paper';
    rpsMatch(player1, player2);
    expect(player2.wins).toEqual(1);
  });

  it("paper beats rock", function(){
    var winningMove = pickWinner('paper', 'rock');
    expect(winningMove).toEqual('paper');
  });

  it("rock beats scissors", function(){
    var winningMove = pickWinner('rock', 'scissors');
    expect(winningMove).toEqual('rock');
  });

  it("scissors beats paper", function(){
    var winningMove = pickWinner('scissors', 'paper');
    expect(winningMove).toEqual('scissors');
  });

  it("spock loses to lizard", function(){
    var winningMove = pickWinner('spock', 'lizard');
    expect(winningMove).toEqual('lizard');
  });

  it("scissors decapitate lizard", function(){
    var winningMove = pickWinner('scissors', 'lizard');
    expect(winningMove).toEqual('scissors');
  });

  it("two of the same moves is a draw", function(){
    var winningMove = pickWinner('scissors', 'scissors');
    expect(winningMove).toEqual(false);
  });

});
