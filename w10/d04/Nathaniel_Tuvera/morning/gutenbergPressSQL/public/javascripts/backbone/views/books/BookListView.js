var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(Book){
      var bookView = new GutenbergApp.Views.BookView({model: Book});
      that.$el.append( bookView.render().el )
    })
    return this;
  }
})
