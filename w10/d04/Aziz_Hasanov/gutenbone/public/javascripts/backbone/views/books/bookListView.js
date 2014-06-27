var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, "add", this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(i) {
      var bookView = new GutenbergApp.Views.BookView({model: i});
      that.$el.append(bookView.render().el);
    });
    return this;
  }
});