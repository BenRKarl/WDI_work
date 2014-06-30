var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookListView = Backbone.View.extend({
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new GutenbergApp.Views.BookView({model: book});
      that.$el.append(bookView.render().el)
    });
    return this;
  }
});
