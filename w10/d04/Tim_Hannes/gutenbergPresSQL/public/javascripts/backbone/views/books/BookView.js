var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.Bookview = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  template: _.template( $('#book-template').html() ),
  render: function(){
    this.$el.html( this.template( this.model.attributes) );
    return this;
  }
})
