var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    });
  },

  findPokemonByName : function(name){
    var pokemonIwant = _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
    return pokemonIwant;
  },

  findStrongestPokemon : function(){
    var strongest = _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    });
    return strongest;
  },

  findPokemonByType : function(type){
    var containsType = _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    });
    return containsType;
  },

  findAllTypes : function(){
    var allTypes = _.map(pokemon.pokemonList, function(monster){
      return monster.type;
    });
    _.uniq(_.flatten(allTypes));
  },

  totalStats : function(name){
  }
}
