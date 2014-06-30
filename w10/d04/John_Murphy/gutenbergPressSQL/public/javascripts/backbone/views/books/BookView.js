var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.html( this.template( {book: this.model.toJSON()}));
    return this;
  }
})
