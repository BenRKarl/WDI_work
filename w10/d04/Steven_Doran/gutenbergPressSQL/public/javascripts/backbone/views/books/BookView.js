var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookView = Backbone.View.extend({
   initialize: function() {
      this.listenTo(this.model, 'all', this.render)
   },
   template: _.template($('#book-template').html()),
   tagName: 'li',
   render: function(){
      this.$el.html( this.template( this.model.attributes) );
      return this;
   }
})