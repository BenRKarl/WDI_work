var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.initialize = function(){
   var monkeys = new Bananapp.Collections.MonkeyCollection();
   var listView = new Bananapp.Views.MonkeyListView({
      el: $('.monkey-refuge'),
      collection: monkeys
   });

   monkeys.fetch();

   $('.monkey-form').on('submit', function(e) {
      e.preventDefault();
      var nameField = $('.monkey-name');
      var newName = nameField.val();
      nameField.val('');
      monkeys.create({name: newName});
   })

   $('h1').mouseenter(function() {
      $('h1').css('transform', 'scale(1.3,1.3) rotate('+((Math.random() * 20)-10)+'deg)');
   });

   $('h1').mouseleave(function() {
      $('h1').css('transform', 'scale(1,1)');
   });
      
};

$(function(){
  Bananapp.initialize(); 
})
