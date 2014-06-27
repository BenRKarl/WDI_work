var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  template: _.template($('#author-template').html()),
  tagName: 'li',
  render: function(){
    this.$el.html( this.template({author: this.model.toJSON()} ) );
    var bookListView = new GutenbergApp.Views.BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.books')
    });
    return this;
  },
  events:{
    'click button.books-button' : 'getBooks'
  },
  getBooks: function(){
    this.model.get('books').fetch();
    debugger
    return this;
  }
});

