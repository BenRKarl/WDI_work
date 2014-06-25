var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };

 Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
   this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#monkey-template').html()),
  render: function(){
    this.$el.empty();
    var renderedHTML = this.template( this.model.attributes );//still fuzzy.
    this.$el.html ( renderedHTML );
    return this;
  }

 })


