var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    var pokemonIWant = _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
    return pokemonIWant;
  },

  findStrongestPokemon : function(){
    var strongest = _.max(this.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    })
    return strongest;
  },

  findPokemonByType : function(type){

   return _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    })

  },

  findAllTypes : function(){
    var arr = [];
    _.each(pokemon.pokemonList, function(monster){
      arr.push(monster.type);
    })
    arrf = _.flatten(arr);
    return _.uniq(arrf);
  },

  totalStats : function(name){
    var foundPokemon = pokemon.findPokemonByName(name);
    //return _.reduce
  }
}
