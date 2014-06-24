var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    var pokemonArray = pokemon.pokemonList;
    _.each(pokemonArray, function(monster){
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    return _.find(pokemon.pokemonList, function(pokemon){
      return pokemon.name === name;
    });
  },

  findStrongestPokemon : function(){
    return _.max(pokemon.pokemonList, function(pokemon){
      return parseInt(pokemon.stats.attack);
    });
  },

  findPokemonByType : function(type){
    return _.filter(this.pokemonList, function(pokemon){
      return _.contains(pokemon.type, type)
    });
  },

  findAllTypes : function(){
    var allTypes = _.map(pokemon.pokemonList, function(pokemon){
      return pokemon.type;
    })
    return _.uniq(_.flatten(allTypes));
  },

  totalStats : function(name){
    var foundPokemon = pokemon.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(memo, stat){ return parseInt(memo) + parseInt(stat) })
  }
}
