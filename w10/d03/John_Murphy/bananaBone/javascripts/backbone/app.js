var BananaBone = BananaBone || { Models: {}, Collections: {}, Views: {} };

BananaBone.initialize = function(){
// Create a collection
var monkeyCollection = new BananaBone.Collections.MonkeyCollection()
// Create a listview
var monkeyListView = new BananaBone.Views.MonkeyListView({collection: monkeyCollection, el: $('#monkey-list')})
// Set up events for form
$('#monkey-form').on('submit', function(e){
  e.preventDefault();
  monkeyCollection.add({name: $('#monkey-name').val()});
  $('#monkey-name').val('')
})

};

$(function(){
  BananaBone.initialize();
})
