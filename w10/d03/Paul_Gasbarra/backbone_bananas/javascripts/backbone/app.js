var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };
//If you don't find banana

var Bananapp = {
  Models: {},
  Collections: {},
  Views: {}
};

Bananapp.initialize = function(){
  var collection = new Bananapp.Collections.MonkeyCollection();
  var listView = new Bananapp.Views.MonkeyListView({
    el: $('.monkeys'),
    collection: monkeys
  });

  $('form[name="monkey-name"]').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form [name="monkey-name"] input');
    var newName = nameField.val();
    nameField.val('');
    monkeys.add({name: newName})
  })
  //Create collection
  //Create listview
  //Set up

};

$(function(){
  Bananapp.initialize();
})
