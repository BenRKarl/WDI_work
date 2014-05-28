function Computer(screenSize) {
  this.screenSize = screenSize;
  //this.osVersion = osVersion;
}

Computer.prototype.osVersion = "Mavericks";

var mac = new Computer(13);
var pc = new Computer(24);
var linux = new Computer(17);

Computer.prototype.osVersion = "Snow Lion"

mac.osVersion;
pc.osVersion;
linux.osVersion;