var Book = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    author: 'n/a'
  }
});


var myBook = new Book;

console.log(myBook.attributes);
