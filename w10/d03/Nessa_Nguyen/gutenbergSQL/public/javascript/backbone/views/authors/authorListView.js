var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function() {
    this.listenTo(this.collection, 'change', this.render);
  },
  render: function() {
    console.log('Hi');
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author) {
      var authorView = new GutenbergApp.Views.AuthorView({model: author});
      that.$el.append(authorView.render().el);
    });
  }
});
