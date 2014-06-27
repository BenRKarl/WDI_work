var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} }; // If one file loads faster than another, it says "Oh you found Bananapp first?  Use it.  If not..."

Bananapp.initialize = function(){
  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var ListView = new Bananapp.Viws.monkeyListView({
    collection: monkeyCollection,
    el: $('.monkey-bin')
  })
  $('.new-monkey').on('submit', function(e){
    e.preventDefault();
    var nameField = $('.monkey-name');
    var monkeyName = nameField.val();
    nameField.val('');
    monkeys.add({name: monkeyName});
  })
})
