var Bananapp = Bananapp || {  Models: {}, Collections: {}, Views: {} };
// the || is important depending on how fast each js file loads allows namespacing


Bananapp.initialize = function(){
  // Create a collection
  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var listView   = new Bananapp.Views.MonkeyListView({
    collection: monkeys,
    el: $('.monkeys')
  });

  monkeys.fetch();
  // Set up Events for the form
    $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField   = $('.monkey-name');
    var monkeyName  = nameField.val();
    nameField.val('');
    monkeys.create({name: monkeyName})
  })
};




$(function(){
  Bananapp.initialize();


})

