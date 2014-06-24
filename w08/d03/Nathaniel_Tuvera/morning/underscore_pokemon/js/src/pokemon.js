var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    // pokemonList.each do |monster|
    // end
  _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    // _.find(pokemon.pokemonList, function(monster){
    //   monster.name = name;

    var pokemonIWant = _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
    return pokemonIWant;
  },

  findStrongestPokemon : function(){

    var pokemonStrongest = _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack);      //returns true for 'callback'
    });
    return pokemonStrongest;
  },

  findPokemonByType : function(type){
    //_.filter / _.contains
    var pokemonByType = _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type);
    });
    return pokemonByType
  },

  findAllTypes : function(){
    //_.map / _.flatten / _.uniq
    var allTypes = _.map(pokemon.pokemonList, function(monster){
      return monster.type;    //uniq.(_.flatter(types));
    });
    return _.uniq(_.flatten(allTypes));

  },

  totalStats : function(name){
    // finds total stats for a given pokemon
    // _.reduce
//     var sum = _.reduce(pokemon.pokemonList, function(monster){
// debugger;
//       return
    // })

    var foundPokemon = pokemon.findPokemonByName(name);
    return _.reduce(foundPokemon.stats, function (memo, stat){
      return memo + parseInt(stat);
    }, 0);
  }
}

// pokemon.pokemnList

// pokemonprintAllPokemonNamesToConsole
