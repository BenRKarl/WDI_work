function Computer (){
}


// Why doesn't changing this work?
Computer.prototype = {
  screenSize: '14 inches',
  osVersion: 2.6
};


var computerUno = new Computer();

var computerDos = new Computer();

var computerTres = new Computer();

var computerCuatro = new Computer();
