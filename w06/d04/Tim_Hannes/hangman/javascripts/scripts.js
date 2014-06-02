console.log('Ready for hangman?')

var alphabet = new alphabetArr();
var numTeams = 15;
var randomWord = "";
var displayWord = ""
var position = 0;
var word = new teamList();

function alphabetArr(){
  this.length = 26
  this[0] = "A";
  this[1] = "B";
  this[2] = "C";
  this[3] = "D";
  this[4] = "E";
  this[5] = "F";
  this[6] = "G";
  this[7] = "H";
  this[8] = "I";
  this[9] = "J";
  this[10] = "K";
  this[11] = "L";
  this[12] = "M";
  this[13] = "N";
  this[14] = "O";
  this[15] = "P";
  this[16] = "Q";
  this[17] = "R";
  this[18] = "S";
  this[19] = "T";
  this[20] = "U";
  this[21] = "V";
  this[22] = "W";
  this[23] = "X";
  this[24] = "Y";
  this[25] = "Z"
}

function teamList(){
  this.length = numOfWords;
  this.[0] = "Baltimore Orioles";
  this.[1] = "Boston Red Sox";
  this.[2] = "Chicago White Sox";
  this.[3] = "Cleveland Indians";
  this.[4] = "Detroit Tigers";
  this.[5] = "Houston Astros";
  this.[6] = "Kansas City Royals";
  this.[7] = "Los Angeles Angels";
  this.[8] = "Minnesota Twins";
  this.[9] = "New York Yankees";
  this.[10] = "Oakland Athletics";
  this.[11] = "Seattle Mariners";
  this.[12] = "Tampa Bay Rays";
  this.[13] = "Texas Rangers";
  this.[14] = "Toronto Blue Jays"
}

function availableLetters(i) {
  if (LettersSelected.charAt(i == alphabet[i])
    document.write(alphabet[i]);
  else
    document.write();
}



