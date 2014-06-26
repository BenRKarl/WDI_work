var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };
//To namespace whole application, we want to organize our models, collections, views.
//We include this in all js files, so if the file isn't found via link form index., it's defined as this.
Bananapp.initialize = function(){

  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var listView = new Bananapp.Views.MonkeyListView({
    el: $('.monkeys'),
    collection: monkeys
  });

  //create form events
  $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.monkey-form input');
    var newName = nameField.val();
    nameField.val('');
    monkeys.add({name: newName});
  })
};

//on load, call initialize
$(function(){
  Bananapp.initialize();
})
