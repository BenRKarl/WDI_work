var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

//Collection
Bananapp.Collections.MonkeyCollection = Backbone.Collection.extend({
  model: Bananapp.Models.Monkey,
  url: '/monkeys'
});
