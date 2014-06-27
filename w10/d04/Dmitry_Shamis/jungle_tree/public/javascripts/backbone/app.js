var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {}};

Bananapp.initialize = function() {
  //Create a collection
  var monkeyCollection = new Bananapp.Collections.MonkeyCollection();

  //Create a listview
  var monkeyListView = new Bananapp.Views.MonkeyListView({
    collection: monkeyCollection,
    el: $('.monkey-pen')
  });

  monkeyCollection.fetch();

  //Set up events for the form
  $('#monkey-form').on('submit', function(e) {
    e.preventDefault();
    var monkeyField = $('#monkey-name');
    var monkeyName = monkeyField.val();
    monkeyField.val('');
    monkeyCollection.create({name: monkeyName});
  })
};

$(function() {
  Bananapp.initialize();
})
