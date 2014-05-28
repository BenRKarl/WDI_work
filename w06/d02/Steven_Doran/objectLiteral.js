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


function GameDie(){
}


GameDie.prototype = {
    roll: function(){

        console.log("You rolled a: " + (Math.floor(Math.random()*6) + 1));
    }
}

var die = new