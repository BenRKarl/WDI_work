function Computer (screensize, osVersion) {
  this.screensize = screensize;
}
Computer.prototype.osVersion = "Snow Cheetah";




var comp1 = new Computer(12);
var two = new Computer(12);
var three = new Computer(12);
var four = new Computer(12);

Computer.prototype.osVersion = "Snowiest Cheetah";



// Computer.prototype = {
//   osVersion: function(){
//     console.log("Snow Cheetah");
//   }
// }
