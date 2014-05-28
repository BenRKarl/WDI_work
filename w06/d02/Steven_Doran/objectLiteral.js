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