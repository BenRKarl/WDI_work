var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };

Bananapp.View.NameView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('.name-template').html()),
  
})