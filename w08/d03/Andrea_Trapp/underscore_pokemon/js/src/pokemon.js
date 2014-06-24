var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
  // in JavaScript console:
  // pokemon.printAllPokemonNamesToConsole();
  // 
  // compare syntax with Ruby:
  // pokemonList.each do |monster|
  //    ...
  // end

    _.each(pokemon.pokemonList, function(monster){
      console.log(monster.name);
    })
  },

  findPokemonByName : function(name){
    
    // this code works, but its not needed that complicated... we can return directly without storing the value in a variable   
    // var pokemonIWant = _.find(pokemon.pokemonList, function(monster){
    //   return monster.name == name;
    // });
    // return pokemonIWant;

    return _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    });
   
    // console: pokemon.findPokemonByName("Bulbasaur");
  },

  findStrongestPokemon : function(){
    // look into _max
    var strongest = _.max(this.pokemonList, function(monster){
    //var strongest = _.max(pokemon.pokemonList, function(monster){   this works too !!!
      return parseInt(monster.stats.attack);      
    });
    return strongest;

    // console: pokemon.findStrongestPokemon();
  },

  findPokemonByType : function(type){
    // look into _.filter, _.contains

    // this code works, but its not needed that complicated... we can return directly without storing the value in a variable
    // var pokemonIWant = _.filter(pokemon.pokemonList, function(monster){     
    //   if (_.contains(monster.type, type)){
    //     return monster.name 
    //   };
    // })
    // return pokemonIWant;

    return _.filter(pokemon.pokemonList, function(monster){ 
      return _.contains(monster.type, type);
    });

    // console: pokemon.findPokemonByType("Poison");
  },

  findAllTypes : function(){
    // _.map / _.flatten / _.uniq

    var types = _.map(pokemon.pokemonList, function(monster){
      return monster.type;
    });
    // debugger;
    return _.uniq(_.flatten(types));    
  },

  totalStats : function(name){
    // finds total stats for a given pokemon
    // _.reduce
    var foundPokemon = pokemon.findPokemonByName(name);

    return _.reduce(foundPokemon.stats, function(memo, stat){
      return memo + parseInt(stat);
    }, 0);

    // console: pokemon.totalStats("Jigglypuff");
  }
}



