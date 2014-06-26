var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {}};

Bananapp.initialize = function(){
  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var listView = new Bananapp.Views.MonkeyListView({
    el: $('.monkeys'),
    collection: monkeys
  })
  // create a collection
  //create a listview
  $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.monkey-form input');
    var newName = nameField.val();
    nameField.val('');
    monkeys.add({name: newName});
  })
  //set up events for the form

};

$(function(){
  Bananapp.initialize();
})
