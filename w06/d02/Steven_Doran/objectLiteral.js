var dog = {
    name: 'Glenjamin',
    breed: 'Labradoodle',
    bark: function(){
        console.log('Bark.')
    },
    introduce: function(){
        console.log('Hey dude. My name is ' + this.name + '.')
    }
}

/////////////////////////////
/////////////////////////////

function GameDie(numSides){
    this.numSides = numSides;
}


GameDie.prototype = {
    roll: function(){
        var num = Math.floor(Math.random() * this.numSides) + 1;
        console.log("You rolled a: " + num);
    }
}

var mySixSidedDie = new GameDie(6)
var myEightSidedDie = new GameDie(8)


/////////////////////////////
/////////////////////////////

function Computer(screenSize){
    this.screenSize = screenSize;
}

Computer.prototype.osVersion = "Mountain Lion"


var comp1 = new Computer("22 inches");
var comp2 = new Computer("15 inches");
var comp3 = new Computer("17 inches");
var comp4 = new Computer("15 inches");


Computer.prototype.osVersion = "Mavericks"






