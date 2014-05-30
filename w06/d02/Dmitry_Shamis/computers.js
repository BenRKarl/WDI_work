function Computer(screenSize) {
  this.screenSize = screenSize;
}

Computer.prototype = {
  osVersion: "Lion"
};

var thirteenMBP = new Computer(13);
var fifteenMBP = new Computer(15);
var seventeenMBP = new Computer(17);
var tenMBP = new Computer(10);

Computer.prototype.osVersion = "Mavericks";
