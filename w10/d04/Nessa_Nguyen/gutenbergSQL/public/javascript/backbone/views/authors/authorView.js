var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} }

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function() {
    var html = this.template(this.model.attributes);
    this.$el.append(html);
    return this;
  },
  events: {
    'click button': 'showBooks'
  },
  showBooks: function() {
    $('.books').empty();
    var that = this;
    var author_id = this.$el.find('button').attr('data-author');
    var books = new GutenbergApp.Collections.BookCol();
    books.url = '/authors/'+author_id+'/books';

    var bookListView = new GutenbergApp.Views.BookListView({
      collection: books,
      el:         that.$el.find('ul')
    });

    books.fetch({success: function() {
        bookListView.render();
      }
    });
  }
});
