var BananaApp = BananaApp || { Models: {}, Collections: {}, Views: {} };


BananaApp.Collections.MonkeyCol = Backbone.Collection.extend({
  model: BananaApp.Models.Monkey
});


