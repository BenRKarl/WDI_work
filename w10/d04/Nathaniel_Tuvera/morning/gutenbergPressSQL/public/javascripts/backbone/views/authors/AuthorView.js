var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
    // debugger
    this.$el.html(this.template( this.model.attributes ));
    var bookListView = new GutenbergApp.Views.BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.books')
    });
    return this;
  },
  events:{
    'click button.show-books' : 'showBooks'
  },
  showBooks: function(){
    this.model.get('books').fetch(); // undefined.  need to add book collection by author to model collection
    return this;
  }
})
