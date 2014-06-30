var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };




Bananapp.initialize = function(){
  // collection, listview, events
  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var listView = new Bananapp.Views.MonkeyListView({
    el: $('.monkeys'),
    collection: monkeys
  });

  monkeys.fetch();

  $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.monkey-form input');
    var newName = nameField.val();
    nameField.val('');
    var number = Math.floor((Math.random() * 5))
    monkeys.create({name:newName, number:number});
  })


  bab = new Bananapp.Models.Monkey({name:'Baboon', number: 1});
  babView = new Bananapp.Views.MonkeyView({model: bab});
  // $('.testing').append(babView.render().el)
  monkeys.add(bab)
  monkeys.add({name: 'Gorrilla', number: 2})

};

$(function(){
  console.log('posture? posturing?');
  $( ".draggable" ).draggable();
  $(document).tooltip();
  Bananapp.initialize();
})
