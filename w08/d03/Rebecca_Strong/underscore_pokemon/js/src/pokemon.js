var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    // pokemonList.each do |monster|
    // end

    _.each(pokemon.pokemonList, function(monster) {
      console.log(monster.name);

    })
  },

  findPokemonByName : function(){
    var name = _.find(pokemon.pokemonList, function(monster){
      console.log(monster.find);
      // return monster.name == name; })
})
  },

  findStrongestPokemon : function(){
    var strongest = _.max(this.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    });
  // console.log(monster.max);
  return strongest;
    })
  },

  findPokemonByType : function(type){

   var taxon = _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    });
 },

  findAllTypes : function(){
    var type = _.map(pokemon.pokemonList, function(monster){
      return monster.type;
      //in console it returns an array of nested arrays, so call .flatten , then _uniq(_.flatten(types));
  });
      return _uniq(_.flatten(types));
  },

  totalStats : function(name){
    var foundPokemon = pokemon.findPokemonByName(name);
    _.reduce(foundPokemon.stats, function(memo, stat) {
      return memo + parseInt(stat);
      //parseInt bcs list is not an integer

      //pokemon.totalStats("JigglyPuff")
    }, 0);
  }
}
