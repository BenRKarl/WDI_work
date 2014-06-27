var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
    var that = this;
    this.$el.html( this.template( {author: this.model.toJSON()}));
    this.$el.find('.books-button').on('click', function(){
      var bookCollection = new GutenbergApp.Collections.BookCollection();
      bookCollection.author_id = that.model.attributes.id;
      bookCollection.url = 'authors/' + bookCollection.author_id + '/books';
      bookCollection.fetch();
      var newbookListView = new GutenbergApp.Views.BookListView({
        collection: bookCollection,
        el: that.$el.find($('.books'))
      });
      newbookListView.render();
      debugger
    });
    return this;
  }
})
