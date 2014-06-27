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
  $('.monkey-form').submit(function(e){
    e.preventDefault();
    var newMonkey = new Bananapp.Models.Monkey({name: $('.monkey-name-input').val()});
    monkeys.add(newMonkey);
    $('.monkey-name-input').val('');
    

  })

};


$(function(){
Bananapp.initialize();
})