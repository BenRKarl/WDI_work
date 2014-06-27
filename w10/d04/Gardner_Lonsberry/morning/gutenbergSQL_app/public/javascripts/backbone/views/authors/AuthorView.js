var GutenbergApp = GutenbergApp | Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorView.View.extend({
  template: _.template($('#author-template').html()),
  render: function(){
    this.$el.html( this.template( this.mode.attributes ) );
    return this;
  }
})