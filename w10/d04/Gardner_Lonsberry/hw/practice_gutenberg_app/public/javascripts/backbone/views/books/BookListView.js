var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookListView = Backbone.Views.extend{(
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new GutenbergApp.Views.BookView({model: book});
      // When do you do .render() and .render.el???
      that.$el.append(bookView.render().el);
    }
    return this;
  }
  });