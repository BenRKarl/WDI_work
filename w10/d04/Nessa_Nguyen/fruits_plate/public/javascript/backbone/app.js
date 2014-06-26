var BananaApp = BananaApp || { Models: {}, Collections: {}, Views: {} };

BananaApp.initialize = function() {
  var monkeys = new BananaApp.Collections.MonkeyCol();
  var monkeyList = new BananaApp.Views.MonkeyListView({
    collection: monkeys,
    el        : $('.monkey-list')
  });

  monkeys.fetch();

  $('.new-monkey').on('submit', function(e) {
    e.preventDefault();
    var name = $('.monkey-name').val();
    var age  = $('.monkey-age').val();
    var toy  = $('.monkey-toy').val();
    _.each($('.new-monkey').find('input[type="text"]'), function(inputField) {
      $(inputField).val('');
    });
    monkeys.create({name: name, age: age, toy: toy});
  });
};

$(function() {
  BananaApp.initialize();

})
