var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Models.Author = Backbone.Model.extend({
  initialize: function() {
    var bookURL = '/authors/' + this.get('id') + '/books';
    var books = new GutenbergApp.Collections.BookCollection();
    books.url = bookURL;
    this.set('books', books);
  }
})