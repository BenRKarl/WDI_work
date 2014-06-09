
//computers!
//write a constructor function & modify the prototype for a Computer object
// Properties should include:
// screenSize
// osVersion
// Instantiate 4 computer objects using the 'new' keyword
// Without touching any of the instances, modify the osVersion for all the computers

function Computer(screen) {
this.screen = screen;
  }


Computer.prototype.osVersion = 'Mt Cat';
//bcs you're modifying an object (even tho it's empty)may want to change it later on!!! hint!!

var comp1 = new Computer(12);
var comp2 = new Computer(13);
var comp3 = new Computer(14);
var comp4 = new Computer(15);

Computer.prototype.osVersion = Snow Leopard




// Computer.prototype {
// osVersion: function(){
//   console.log(osVersion);
//   }

// var update  = new Computer('SnowLeopard');
// var update  = new Computer('MountainLion');
// var update  = new Computer('Meercat');
// var update  = new Computer('ManEater');
// }
