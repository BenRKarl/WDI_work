function Pizzaiolo(name){
	    	this.name = name;
	    	this.pies = 0;
	    	this.makePie = function(){
	    		this.pies++;
	    	}
	  Pizzaiolo.prototype.makePie = function(){
	  	this.pies++;
	  }

var mario = new Pizzaiolo('mario')''
assert(typeof mario === 'object', "Mario is a Pizzaiolo");

var luigi = new Pizzaiolo('luigi');
luigi.stealPie = function stealPie(pizzaiolo){
	pizzaiolo.pies--;
	this.pies++;
}
luigi.stealPie(mario);
assert(luigi.pies) === 1 && mario.pies === 0, "luigi is a clever thief");

}

assert(luigi._proto_---)

assert(mario._proto_=== Pizzaiolo.prototype, "mario's proto is the Pizzaiolo prototype");

mario.makePie();

assert(mario.pies === 1, "The make pies function is working");
assert(mario.makePie.name === "makePie.name == undefined");

mario.stealPie = luigi.stealPie;

Pizzaiolo.prototype.drinkEspresso = function(){
  this.name = this.name.toUpperCase();
}

mario.drinkEspresso();
luigi.drinkEspresso();

assert(mario.name === "MARIO" && luigi.name === "LUIGI", "all is fair")

assert(mario._proto_=== Pizzaiolo.prototype, "mario's proto is the Pizzaiolo prototype");





//create another Pizzaiolo object
