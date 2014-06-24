var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(allPokemon, function(e, i, l){
      console.log(e.name)
    })
  },

  findPokemonByName : function(name){

    return (_.findWhere(allPokemon, {name:name} ));
  },

  findStrongestPokemon : function(){
    var strongest = _.max(allPokemon, function(monster){ return parseInt(monster.stats.attack) });
    return strongest;
  },

  findPokemonByType : function(type){
    typesArr = _.filter(allPokemon, function(monster){ 

      typeArr = monster.type;
      if (_.contains(typeArr, type)){
        return monster;
      }
    })
    return typesArr;
  },

  findAllTypes : function(){
    return _.uniq(_.flatten(_.map(allPokemon, function(m){ return m.type })));
    
  },

  totalStats : function(name){
    m = pokemon.findPokemonByName(name);
    return _.reduce(_.flatten(m.stats), function(memo, num) {return memo + parseInt(num); }, 0)

  }
}