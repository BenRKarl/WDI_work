var BananaApp = BananaApp || { Models: {}, Collections: {}, Views: {} };

BananaApp.Models.Monkey = Backbone.Model.extend({
  defaults: {
    name: 'Unknown',
    age: 1,
    toy: 'banana'
  }
});



