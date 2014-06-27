var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  template: _.template($('#author-template').html()),
  tagName: 'li',
  render: function(){
    this.$el.html( this.template( this.model.attrubutes ));

    return this;
  },
    events:{
    'click [class="show-books"]' : 'showBooks'
  },
  showBooks: function(){
    var books = new GutenbergApp.Collections.BookCollection();
    var bookListView = new GutenbergApp.Views.BookListView({
      collection: books,
      el: $('.books')
    });
    books.fetch({success: function(){
      bookListView.render()
    }});

  }
});




