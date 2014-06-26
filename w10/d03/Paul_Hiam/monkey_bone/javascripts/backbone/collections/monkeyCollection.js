var ZooApp = ZooApp || { Models: {}, Collections: {}, Views: {} };

ZooApp.Collections.MonkeyCollection = Backbone.Collection.extend({
  model: Monkey
});
