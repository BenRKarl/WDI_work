$(function(){
  console.log("Hello morning.")
})


var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    var arr = pokemon.pokemonList
    // var iWant = _.where( arr, { name: name }  )
    // return iWant;

    var iWant = _.find( arr, function(monster){
      return monster.name === name;
    })
    return iWant;
  },

  findStrongestPokemon : function(){
    var arr = pokemon.pokemonList
    var strongest = _.max(arr, function(monster){
      return parseInt(monster.stats.attack);
    });
    return strongest;
  },

  findPokemonByType : function(type){
      var arr = pokemon.pokemonList
      var iWant = _.filter( arr, function(monster){
      return _.contains(monster.type, type);
    })
    return iWant;
  },

  findAllTypes : function(){
      var arr = pokemon.pokemonList
      var types = _.map( arr, function(monster){
        return monster.type
      });
      return _.uniq(_.flatten(types));
  },

  totalStats : function(name){
    var foundPokemon = pokemon.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function(memo, stat) {
      return memo + parseInt(stat);
    }, 0);
  }
}
