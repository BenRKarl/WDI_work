var GutenbergApp = GutenbergApp || { Models: {}, Collections: {}, Views: {} }

  GutenbergApp.Views.AuthorView = Backbone.View.extend({
    tagName: 'li',
    template: _.template($('#author-template').html()),
    render: function(){
      this.$el.html( this.template( this.model.attributes));
      var bookListView = new GutenbergApp.Views.BookListView({
        colleciton: this.model.get('books'),
        el: this.$el.find('.books')
      })
      return this;
    },
    events: {
      'click button.show-books' : 'showBooks'
    },
    showBooks: function(){
      this.model.get('books').fetch();
      return this;
    }
  });
