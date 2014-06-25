var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(value, key, list) {
      console.log(value.name);
    });
  },

  findPokemonByName : function(name){
    result = _.where(pokemon.pokemonList, {name: name});
    console.log(result[0].name);
    return result[0];
  },

  findStrongestPokemon : function(){
    result = _.max(pokemon.pokemonList, function(monster) {
      return parseInt(monster.stats.attack);
    });
    console.log(result.name);
    return result.name;
  },

  findPokemonByType : function(type){
    var typeIt = _.filter(pokemon.pokemonList, function(monster) {
      //console.log(monster.type);
      return _.contains(monster.type, type);
    });
    console.log(typeIt);
    return typeIt;
  },

  findAllTypes : function(){
    var justTypes = _.map(pokemon.pokemonList, function(monster) {
      return monster.type;
    });
    console.log(_.uniq(_.flatten(justTypes)));
    return _.uniq(_.flatten(justTypes));
  },

  totalStats : function(name){
    var whickPokemon = this.findPokemonByName(name).stats;
    return _.reduce(whickPokemon, function(memo,num) {
      return memo+parseInt(num);
    },0);
  }
}

pokemon.printAllPokemonNamesToConsole();


