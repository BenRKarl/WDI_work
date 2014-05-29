function Computer (screenSize, osVersion){
  this.screenSize = screenSize;
  this.osVersion  = osVersion;
}

Computer.prototype = {
  osVersion: 'aweOSome'
}

var test1 = new Computer('13', 'osx')
var test2 = new Computer('15', 'osx')
var test3 = new Computer('14', 'linux')
var test4 = new Computer('17', 'win7')

///////////// Class Solution ///////////////

function Computer(screenSize){
  this.screenSize = screenSize;
}

Computer.prototype.osVersion = 'Mt Cat';
// Computer.prototype = {
//   osVersion: 'Mt Cat'
// };

var comp1 = new Computer(12);
var comp2 = new Computer(13);
var comp3 = new Computer(14);
var comp4 = new Computer(15);

Computer.prototype.osVersion = 'Snow Cat'
