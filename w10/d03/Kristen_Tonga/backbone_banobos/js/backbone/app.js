var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };




Bananapp.initialize = function(){
  // collection, listview, events
  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var listView = new Bananapp.Views.MonkeyListView({
    el: $('.name.1'),
    collection: monkeys
  });

  $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.monkey-form input');
    var newName = nameField.val();
    nameField.val('');
    var number = Math.floor((Math.random() * 5))
    monkeys.add({name:newName});
  })


  bab = new Bananapp.Models.Monkey({name:'Baboon'});
  babView = new Bananapp.Views.MonkeyView({model: bab});
  // $('.testing').append(babView.render().el)
  monkeys.add(bab)
  monkeys.add({name: 'Gorrilla'})

};

$(function(){
  console.log('posture? posturing?')
  Bananapp.initialize();
})
