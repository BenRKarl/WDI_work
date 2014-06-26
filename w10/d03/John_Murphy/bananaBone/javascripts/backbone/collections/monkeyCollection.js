var BananaBone = BananaBone || { Models: {}, Collections: {}, Views: {} };

BananaBone.Collections.MonkeyCollection = Backbone.Collection.extend({
  model: BananaBone.Models.Monkey
});
