var dog = {
  name: 'River',
  bark: function(){
    console.log('woof woof woof');
  },
  play: function(){
    console.log(this.name + ' is ready to bring the ball.');
  },
  dislike: function(){
    console.log(this.name + " does not like the neighbor's cat");
  }
}

// >dog.dislike()
// River does not like the neighbor's cat
// undefined

// find out the proto 
// dog.__proto__
// {}