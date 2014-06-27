var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  template: _.template($('#author-template').html()),
  render: function(){
    this.$el.html( this.template( this.model.attrubutes ));
    return this;
  }
});