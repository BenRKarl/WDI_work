var GutenbergApp = GutenbergApp || { Models: {}, Views:{}, Collections: {} };

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  template: _.template($('#author-template').html()),
  tagName: 'li',
  render: function(){
    this.$el.html(this.template( this.model.attributes ));
    return this;
  }
});
