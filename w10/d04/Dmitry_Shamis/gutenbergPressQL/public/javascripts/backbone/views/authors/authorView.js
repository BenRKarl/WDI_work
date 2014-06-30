var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}}

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function() {
    this.$el.html(this.template({author: this.model.toJSON()}));
    var bookListView = new GutenbergApp.Views.BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.books')
    });
    return this;
  },
  events: {
    'click button.display-author-books': 'displayBooks'
  },
  displayBooks: function() {
    this.model.get('books').fetch(
      {success: function() {
        bookListView.render();
      }});
    return this;
  }
})
