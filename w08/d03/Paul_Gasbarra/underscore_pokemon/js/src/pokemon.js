var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    var pokemonIWant = _.find(pokemon.pokemonList, function(monster){return monster.name == name;});
    return pokemonIWant;
  },

  findStrongestPokemon : function(){
    var pokemonStrongest = _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack)
    });
    return pokemonStrongest;
  },

  findPokemonByType : function(type){
    return _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    });

  },

  findAllTypes : function(){
    var types = _.map(pokemon.pokemonList, function())
  },

  totalStats : function(name){

  }
}
