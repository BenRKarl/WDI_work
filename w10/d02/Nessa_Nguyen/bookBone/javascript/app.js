var Author = Backbone.Model.extend({
  this.set('books', new BookCollection());
});
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});
var AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function() {
    var html = this.template(this.model.attributes);
    var renderedTemp = this.$el.html(html);
//    this.$el.html( this.template({
//      author: this.model.toJSON() })
//    );
    var bookListView = new BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.my-books')
    });
    bookListView.render();
  },
  events: {
    'click button': 'removeAuthor'
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

var Book = Backbone.Model.extend({});
var BookCollection = Backbone.Collection.extend({
  model: Book
});
var BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function() {
    var html = this.template(this.model.attributes);
    var renderedTemp = this.$el.html(html);
    return this;
  }
});

var BookListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book) {
      var bookView = new BookView({model: book})
      that.$el.append(bookView.render().el);
    });
    return this;
  }
})


$(function () {
  var lichard = new Author({name: 'Lichard Grey'});
  var lichardView = new AuthorView({model: lichard});
  lichardView.render().el;
  var katthew = new Author({name: 'Katthew Bod'});
  var kathewView = new AuthorView({model: katthew});

  var authorCollection = new AuthorCollection();
  authorCollection.add([lichard, katthew]);
  var authorListView = new AuthorListView({collection: authorCollection, el: '.author-list'});

  $('.new-author').on('submit', function(e) {
    e.preventDefault();
    var authorName = $('.author-name').val();
    console.log($('.author-name'));
    $('.author-name').val('');
    authorCollection.add({name: authorName});
  });

  var sweetBook = new Book({title: 'Peachy cream'});
  var sweetBookView = new BookView({model: sweetBook});
  var sourBook = new Book({title: 'Plum pie'});
  var sourBookView = new BookView({model: sourBook});

  var bookCollection = new BookCollection();
  bookCollection.add(sweetBook);
  var bookListView = new BookListView({collection: bookCollection, el: '.book-list'});
  bookCollection.add(sourBook);
});
