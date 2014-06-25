var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.initialize = function(){
   var monkeys = new Bananapp.Collections.MonkeyCollection();
   var listView = new Bananapp.Views.MonkeyListView({
      el: $('.monkey-refuge'),
      collection: monkeys
   });

   $('.monkey-form').on('submit', function(e) {
      e.preventDefault();
      var nameField = $('.monkey-name');
      var newName = nameField.val();
      nameField.val('');
      monkeys.add({name: newName});
   })
};

$(function(){
  Bananapp.initialize(); 
})
