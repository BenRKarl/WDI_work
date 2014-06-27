var GutenbergApp = GutenbergApp || { Models: {}, Collections: {}, Views: {} }

GutenbergApp.Models.Author = Backbone.Model.extend({
  initialize: function(){
    var booksUrl = '/authors/' + this.get('id') + '/books';
    var books = new GutenbergApp.Collections.BookCollection();
    books.url = booksUrl;
    this.set('books', books);
  }
});
