var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Models.Author = Backbone.Model.extend({
  initialize:function(){
    var booksUrl = '/authors/'+ this.get('id') + '/books'; // Connection to Rails 
    var books = new GutenbergApp.Collections.BookCollection();
    books.url = booksUrl;
    this.set('books', books);  // here we create a 'books' attribute for the Author model, which is an empty BookCollection
  }
});

// var booksUrl = '.../authors/21/books'