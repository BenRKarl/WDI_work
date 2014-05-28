function Computer (){

}


// Why doesn't changing this work?

// Because when you copy paste this in, you are creating a new object,
// which doesn't work. Instead you have to do Computer.prototype.osVersion
// = function(){return 2.8} , for example.
Computer.prototype = {
  screenSize: '14 inches',
  osVersion: function(){
    return 60;
  }
};



var computerUno = new Computer();

var computerDos = new Computer();

var computerTres = new Computer();

var computerCuatro = new Computer();
