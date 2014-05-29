function Computer(screenSize, osVersion){
  this.screenSize = screenSize;
  this.osVersion = "MSDos";
}

Computer.prototype = {
  screen: function(){
    console.log(this.screenSize + " inches.");
  },
  os: function(){
    console.log(this.osVersion);
  }
}

var hal = new Computer(40, "supercray");
var home = new Computer(18, "snow leopard");
var work = new Computer(32, "Vistas");
var watson = new Computer(80, "googleOS");

Computer.prototype.
