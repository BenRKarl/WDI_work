var Gutenberg = Gutenberg || {  Models: {}, Collections: {}, Views: {} };

Gutenberg.Views.BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){

  }
})
