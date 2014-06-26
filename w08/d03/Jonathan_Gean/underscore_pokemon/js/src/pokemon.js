var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
  },

  findPokemonByName : function(name){
    var pokemonIWant=_.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
    return pokemonIWant
  },

  findStrongestPokemon : function(){
    var strongest = _.max(this.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    });
    return strongest;
  },

  findPokemonByType : function(type){
     var type = _.filter(pokemon.pokemonList, function(monster) {
        return _.contains(monster.type, type)
    });
     return type
  },

  findAllTypes : function(){
    var allTypes = _.map(pokemon.pokemonList, function(monster){
      return _.uniq(_.flatten(monster.type));
    });
    return _.uniq(_.flatten(allTypes));
  },

  totalStats : function(name){

    var foundPokemon = pokemon.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(memo, stat){
      return memo + parseInt(stat);
    }, 0)
  }
}
