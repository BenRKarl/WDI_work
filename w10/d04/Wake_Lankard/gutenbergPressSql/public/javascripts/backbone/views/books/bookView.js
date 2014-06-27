var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookView= Backbone.View.extend({
  template: _.template($('#book-template').html()),
  tagName: 'li',
  render: function(){
    this.$el.html( this.template( this.model.attrubutes ));
    return this;
  }
});
