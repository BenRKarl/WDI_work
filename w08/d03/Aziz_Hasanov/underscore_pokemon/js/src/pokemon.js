var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(monster) {
      console.log(monster.name);
    })
    // same as code below in ruby
    // pokemonList.each do |monster|
    // end
  },

  findPokemonByName : function(name){
    var pokemonName = _.find(pokemon.pokemonList, function(monster) {
      return monster.name == name;
    });
    return pokemonName;
  },

  findStrongestPokemon : function(){
    var pokemonStrength = _.max(pokemon.pokemonList, function(monster) {
      return parseInt(monster.stats.attack);
    });
    return pokemonStrength;
  },

  findPokemonByType : function(type){
    var filter = _.filter(pokemon.pokemonList, function(monster) {
      return _.contains(monster.type, type);
    })
    return filter;
  },

  findAllTypes : function(){
    var findType = _.map(pokemon.pokemonList, function(monster) {
      return monster.type;
    });
    return _.uniq(_.flatten(findType));
  },

  totalStats : function(name){
    var myPokemon = pokemon.findPokemonByName(name);
    return _.reduce(myPokemon.stats, function(memo, stat) {
      return memo + parseInt(stat);
    }, 0);
  }
}