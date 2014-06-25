
var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});

var AuthorView = Backbone.View.extend({
  initialize: function(){
  this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
    this.$el.html(this.template({author: this.model.toJSON()}));
    return this;
  },
  events: {
    'click button[name="free-button"]': 'removeAuthor'
  },
  removeAuthor: function(){
    this.model.destroy();
    this.remove();
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
})

var AuthorListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new AuthorView({model: author});
      that.$el.append(authorView.render().el);
    });
    return this;
  }
})

var Book = Backbone.Model.extend({
  defaults: {
    name: ''
  }
});

var BookCollection = Backbone.Collection.extend({
  model: Book
});

var BookView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();
    this.$el.html(this.template({book: this.model.toJSON()}));
    return this;
  },
  events: {'click button[name="delete-book"]': 'deleteBook'},
  deleteBook: function(){
    this.model.destroy();
    this.remove();
  }
})

var BookListView = Backbone.View.extend({
  tagName: 'div',
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function(){
    var that = this
    this.$el.empty()
    _.each(this.collection.models, function(book){
      var bookView = new BookView({model: book});
      that.$el.append(bookView.render().el);
    });
    return this;
  }
})


var lichard
var authorView
var authorCollection
$(function(){
  lichard = new Author({name: 'Lichard DeGray'});
  authorView = new AuthorView({model: lichard});
  authorView.render().el;
  authorCollection = new AuthorCollection();
  authorCollection.add(lichard);
  authorCollection.add({name: 'Kathew Bod'});
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('#author-list')
  });
  authorListView.render().el;

  $('#author-form').on('submit', function(e){
    e.preventDefault()
    authorCollection.add({name: $('.author').val()});
    $('.author').val('')
  })

  remainsOfTheDay = new Book({title: 'Remains of the Day'});
  bookView = new BookView({model: remainsOfTheDay});
  bookView.render().el;
  bookCollection = new BookCollection();
  bookCollection.add(remainsOfTheDay);
  bookListView = new BookListView({
    collection: bookCollection
  })
  bookListView.render().el;
})
