var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.initialize = function(){
//Create a collection
var monkeys = new Bananapp.Collections.MonkeyCollection();

//Create a listview
var monkeyListView = new Bananapp.Views.MonkeyListView({
  el: $('.monkeys'),
  collection: monkeys
});
//var monkeyView = new Bananapp.Views.MonkeyView;
//set up events for the form
monkeys.fetch();

  $('.monkey-form').submit(function(e){
    e.preventDefault();
    var monkeyField = $('.monkey-name-input');
    var monkeyName = $('.monkey-name-input').val();
    //monkeys.add(newMonkey);
    $('.monkey-name-input').val('');
    monkeys.create({name: monkeyName})

  })

};


$(function(){
Bananapp.initialize();
})