// determines the definite load order of files
var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };


Bananapp.Collections.MonkeyCollection = Backbone.Collection.extend({
  model: Bananapp.Models.Monkey,
  url: '/monkeys'   // ***   add url for connecting Backbone with Rails   ***
});