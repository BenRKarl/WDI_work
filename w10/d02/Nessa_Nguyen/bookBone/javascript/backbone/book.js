var Book = Backbone.Model.extend({});

var BookCollection = Backbone.Collection.extend({
  model: Book
});

var BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function() {
    var html = this.template(this.model.attributes);
    var renderedTemp = this.$el.html(html);
    return this;
  }
});

var BookListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book) {
      var bookView = new BookView({model: book})
      that.$el.append(bookView.render().el);
    });
    return this;
  }
})
