
var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };


GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author_template').html()),
  render: function() {
    this.$el.html(this.template(this.model.attributes));
    return this;
  },
  events: {
    'click [data-action="get_books"]': 'getBooks'
  },
  getBooks: function () {
    var that = this;
    authorID = this.model.get('id');
    var thisAuthorsBooks = new GutenbergApp.Collections.BookCollection();
    var thisAuthorsBookListView = new GutenbergApp.Views.BookListView({
      collection: thisAuthorsBooks
    });
    thisAuthorsBooks.url = "/authors/" + authorID + "/books";
    thisAuthorsBooks.fetch({success: function(data) {
      //console.log(data);
      thisAuthorsBookListView.render();
      //console.log(thisAuthorsBookListView.el);
      that.$el.append(thisAuthorsBookListView.el);
      }
    });

  }
});
