var Author = Backbone.Model.extend({
  initialize: function() {
    this.set('books', new BookCollection());
  },
  defaults: {
    name: 'Anonymous'
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

var AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function() {
    var that = this;
    var html = this.template(this.model.attributes);
    var renderedTemp = this.$el.html(html);

    var bookListView = new BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.my-books')
    });
    bookListView.render();

    this.$el.find('form').on('submit', function(e) {
      e.preventDefault();
      var titleField = that.$el.find('input');
      var newTitle   = titleField.val();
      titleField.val('');
      that.model.get('books').add({title: newTitle});
    })
    return this;
  },

  events: {
    'click button[name="delete"]': 'removeAuthor'
  },
  removeAuthor: function() {
    this.model.destroy();
    this.remove();
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author) {
      var authorView = new AuthorView({ model: author });
      that.$el.append(authorView.render().el);
    });
    return this;
  }
});
