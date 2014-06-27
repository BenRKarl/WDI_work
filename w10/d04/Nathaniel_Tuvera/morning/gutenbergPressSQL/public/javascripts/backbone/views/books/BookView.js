var Gutenberg = Gutenberg || {  Models: {}, Collections: {}, Views: {} };

Gutenberg.Views.BookView = Backbone.View.extend({
  intialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.html(this.template( this.model.attributes));
    return this;
  }
})
