var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove)
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($('#monkey-template').html()),
  render: function(){
    this.$el.html( this.template( this.model.attributes ) );
    return this;
  }
});
