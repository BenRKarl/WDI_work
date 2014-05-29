// Computers

// Write a constructor function &  modify the prototype for a Computer object
// - Properties should include:
//   - screenSize
//   - osVersion
// - Instantiate 4 computer objects using the new keyword
// - without touching any of the instances, modify the osVersion for all computers


function Computer(screenSize){
  this.screenSize = screenSize;  
}

Computer.prototype.osVersion = 'Windows 7';
// Computer.prototype = {osVersion: 'Windows 7'};

var newComputer1 = new Computer(24);
var newComputer2 = new Computer(22);
var newComputer3 = new Computer(22);
var newComputer4 = new Computer(24);

