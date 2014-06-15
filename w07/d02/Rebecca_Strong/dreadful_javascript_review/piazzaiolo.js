
// Make Pie Function:

  function Pizzaoiolo(name){
    this.name = name;
    this.pies = 0
    // this.makePies = function(){
    //   this.pies++;

    }

    Pizzaiolo.prototype.makePie = function() {
      this.pies ++;
    }
    var mario = new Pizzaiolo('mario');
    //console.log(typeof mario);
    assert(typeof mario ==="pizzaiolo", "mario is a Pizzaiolo");

    assert(mario.__proto__ === Pizzaiolo.prototype, "mario's proto is the Pizzaiolo.prototype");

    mario.makePie();

    assert(mario.pies == 1, "The make pies function is working");
    assert(mario.makePie.name === undefined, "makePie.name == undefined");
// won't pass unless the function 'makePie' is defined in the makePie function.

    //create a new pizzaiolo object with capability of stealing pies.

    var luigi = new Pizzaiolo('luigi');
    luigi.stealPie = function stealPie(pizzaiolo){
      pizzaiolo.pies --;
      this.pies++;
    }

    luigi.stealPie(mario);
    assert(luigi.pies === 1 && mario.pies === 0, "luigi is a clever thief");


mario.stealPie = luigi.stealPie;
mario.stealPie(luigi);
asssert(luigi.pies === 0 && mario.pies === 1, "mario is an ace thief, too");



//write a drinkEspresso function

Pizzaiolo.prototype.drinkEspresso = function() {
      this.name = this.name.toUppercase() {

}
    mario.drinkEspresso();
    luigi.drinkEspresso();

    assert(mario.name === "MARIO" && luigi.name === "LUIGI", "all is fair in pizza-making and espresso-drinking");

