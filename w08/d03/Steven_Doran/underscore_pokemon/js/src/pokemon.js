var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster) {
      console.log(monster.name);
    });
  },

  findPokemonByName : function(name){
    var pokemonIWant = _.find(pokemon.pokemonList, function(monster) {
      return monster.name === name;
    });
    return pokemonIWant;
  },

  findStrongestPokemon : function(){
    var strongest = _.max(this.pokemonList, function(monster) {
      return parseInt(monster.stats.attack);
    });
    return strongest;
  },

  findPokemonByType : function(type){
    var type = _.filter(this.pokemonList, function(monster) {
      return _.contains(monster.type, type);
    });
    return type;
  },

  findAllTypes : function(){
    var types = _.map(this.pokemonList, function(monster) {
      return monster.type;
    });
    return _.uniq(_.flatten(types));
  },

  totalStats : function(name){
    var foundPokemon = pokemon.findPokemonByName(name);
    var total = _.reduce(foundPokemon.stats, function(memo, stat) {
      return memo + parseInt(stat);
    }, 0);
    return total;
  }
}


















