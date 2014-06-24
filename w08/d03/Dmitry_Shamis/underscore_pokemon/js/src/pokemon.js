var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster) {
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    var pokemonToBeFound = _.find(pokemon.pokemonList, function(monster){
      return name == monster.name;
    })
    return pokemonToBeFound;
  },

  findStrongestPokemon : function(){
    var strongest = _.max(pokemon.pokemonList, function(monster) {
      return parseInt(monster.stats.attack);
    })
    return strongest;
  },

  findPokemonByType : function(type){
    debugger
    var typePokemon = _.filter(pokemon.pokemonList, function(monster) {
      return _.contains(monster.type, type);
    })
    return typePokemon;
  },

  findAllTypes : function(){
    var allType = _.map(pokemon.pokemonList, function(monster){
      return monster.type;
    })
    var typeArray = _.flatten(allType);
    var uniqArray = _.uniq(typeArray);
    return uniqArray
  },

  totalStats : function(name){
    var pokeSearch = _.find(pokemon.pokemonList, function(monster) {
      return monster.name == name
    })
    var stats = _.flatten(pokeSearch.stats);
    var statsSum = _.reduce(stats, function(memo, num){
      return memo + parseInt(num);
    }, 0)
    return statsSum
  }
}
