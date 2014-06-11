var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(this.pokemonList, function(pokemon){
      console.log(pokemon.name);  
    })
  },

  findPokemonByName : function(name){
    _.each(this.pokemonList, function(pokemon){
      if (pokemon.name === name){
        console.log(pokemon);
      }     
    })    
  },

  findStrongestPokemon : function(){
    var strongestPokemon = _.max(this.pokemonList, function(pokemon){
      return parseInt(pokemon.stats.hp); 
    })
    console.log(strongestPokemon);   
  },

  findPokemonByType : function(type){
    var result = _.filter(this.pokemonList, function(pokemon){
      return _.contains(pokemon.type, type);
    })   
    console.log(result);       
  },

  findAllTypes : function(){
    var allTypes = _.map(this.pokemonList, function(pokemon){
      return pokemon.type;
    })
    console.log( _.uniq(_.flatten(allTypes)) );
  },

  totalStats : function(name){
    var foundPokemon = this.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(memo, stat){
      return memo + parseInt(stat);
    }, 0);
    debugger;
  }

}

// pokemon.printAllPokemonNamesToConsole();
// pokemon.findPokemonByName('Mew');
pokemon.findStrongestPokemon();
pokemon.findPokemonByType('Normal');
pokemon.findAllTypes();
pokemon.totalStats('Mew');

