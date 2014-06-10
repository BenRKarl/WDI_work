function RpsMatch(){
  this.sequenceCount = 0;
  this.scorePlayer1  = 0;
  this.scorePlayer2  = 0;
}

RpsMatch.prototype.playSequence = function(movePlayer1, movePlayer2) {
  var winningRules = {
    'rock': 'scissors',
    'scissors': 'paper',
    'paper': 'rock'
  }
  if(winningRules[movePlayer1] == movePlayer2) {
    return movePlayer1;
  }
  if(winningRules[movePlayer2] == movePlayer1) {
    return movePlayer2;
  }
  return false;
}

RpsMatch.prototype.getScore = function(movePlayer1, movePlayer2) {
  var result = this.playSequence(movePlayer1, movePlayer2);
  if(result === movePlayer1) {
    this.scorePlayer1  += 1;
    this.sequenceCount += 1;
  } else if(result === movePlayer2) {
      this.scorePlayer2  += 1;
      this.sequenceCount += 1;
    } else {
      this.scorePlayer1  = 0;
      this.scorePlayer2  = 0;
      this.sequenceCount = 0;
    }
  return this.sequenceCount;
}

function randomChoice() {
    var randomNumber = Math.floor(Math.random() * 3);
    var rps = {0: 'rock', 1: 'paper', 2: 'scissors'};
    return rps[randomNumber];
}

$(function() {

  var newMatch = new RpsMatch;
  var movePlayer1 = randomChoice();
  var movePlayer2 = randomChoice();



})
