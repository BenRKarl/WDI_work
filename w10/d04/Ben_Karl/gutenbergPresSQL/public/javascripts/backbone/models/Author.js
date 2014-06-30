var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Models.Author = Backbone.Model.extend({
  initialize:function(){
    var booksURL = 'authors/' + this.get('id') + '/books';
    var books = new GutenbergApp.Collections.BookCollection();
    books.url = booksURL;
    this.set('books', books);
  }
});
