var pokemon = {

  pokemonList : allPokemon,

  printAllPokemonNamesToConsole : function(){
    _.each(pokemon.pokemonList, function(element, index, list){
      console.log(element.name)})
  },

  findPokemonByName : function(name){
    return _.find(pokemon.pokemonList, function(monster){
      return monster.name == name;
    })
  },

  findStrongestPokemon : function(){
    return _.max(pokemon.pokemonList, function(monster){
      return parseInt(monster.stats.attack);
    })
  },

  findPokemonByType : function(type){
    return _.filter(pokemon.pokemonList, function(monster){
      return _.contains(monster.type, type)
    })
  },

  findAllTypes : function(){
    var types = _.map(pokemon.pokemonList, function(monster){
      return monster.type
    })
    var flattenedTypes = _.flatten(types)
    var uniqueTypes = _.uniq(flattenedTypes)
    return uniqueTypes
  },

  totalStats : function(name){
    var foundPokemon = this.findPokemonByName(name)
    return _.reduce(foundPokemon.stats, function(memo, value){return memo + parseInt(value)}, 0)
  }
}

$(function(){
  $('.create-types').on('click', function(){
    _.each(pokemon.findAllTypes(), function(type){
      $('#poke-bin').append($('<div>').addClass('pokeball').html(type))
        $('.pokeball').on('click', function(event){
    console.log(event.targetls
      l)
    // _each.(foundPokemonByType(event.target.html), function(monster){
      // event.target.append($('<img>').attr('src', monster.img))
    // })
  })
    })
  })





})
