var shark = {
  name: "Bruce",
  bite: function(){
    console.log("Chomp, chomp.");
  },
  eat: function(){
    this.bite();
    console.log("gulp.");
  },
  swim: function(){
    console.log("Now I'm over here.");
  }
}