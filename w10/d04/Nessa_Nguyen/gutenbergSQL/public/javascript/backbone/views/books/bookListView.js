var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book) {
      var bookView = new GutenbergApp.Views.BookView({model: book});
      that.$el.append(bookView.render().el);
    });
    return this;
  }
});
