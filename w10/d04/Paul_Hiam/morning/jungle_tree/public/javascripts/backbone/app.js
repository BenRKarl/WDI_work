var ZooApp = ZooApp || { Models: {}, Collections: {}, Views: {} };

ZooApp.initialize = function(){
  //create a collection
  //create a listview etc
  //set up form events
  var monkeyCollection = new ZooApp.Collections.MonkeyCollection();
  var monkeyListView = new ZooApp.Views.MonkeyListView({
    collection: monkeyCollection,
    el: $('#cage')
  });

  monkeyCollection.fetch();

  $('.new-monkey').on('submit', function(e){
    e.preventDefault();

    var monkeyNameField = $('.monkey-name');
    var monkeyName = monkeyNameField.val();
    monkeyNameField.val('');
    monkeyCollection.create({name: monkeyName})
  })
};

$(function(){
  ZooApp.initialize();
  //ZooApp is the only thing in the global namespace
})