//*** AUTHOR MODEL ***
var Author = Backbone.Model.extend({
  defaults: {
    name: 'That guy...'
  }
})

//*** AUTHOR COLLECTION ***
var AuthorCollection = Backbone.Collection.extend({
  model: Author
})

//*** AUTHOR VIEW ***
var AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function() {
    this.$el.html(this.template({author: this.model.toJSON()}));
    return this;
  },
  events: {
    'click button': 'remove',
    'mouseover': 'changeColor',
    'mouseleave': 'standardColor'
  },
  changeColor: function() {
    this.$el.css('color', 'red')
  },
  standardColor: function() {
    this.$el.css('color', 'black')
  }
})

//*** AUTHOR LIST VIEW ***
var AuthorListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author) {
      var authorView = new AuthorView({model: author})
      that.$el.append(authorView.render().el)
    });
    return this;
  }
})

//*** BOOK MODEL ***
var Book = Backbone.Model.extend({
  defaults: {
    title: '...the one with the dragons.'
  }
})

//*** BOOK COLLECTION ***
var BookCollection = Backbone.Collection.extend({
  model: Book
})

//*** BOOK VIEW ***
var BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function() {
    this.$el.empty();
    this.$el.html(this.template({book: this.model.toJSON()}));
    return this;
  }
})

//*** BOOK LIST VIEW ***
var BookListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function() {
    var that = this;
    _.each(this.collection.models, function(book) {
      var bookView = new BookView({model: book});
      that.$el.append(bookView.render().el)
    });
    return this;
  }
})


var authorCollection;
var authorListView;

$(function() {

  authorCollection = new AuthorCollection;

  authorListView = new AuthorListView({collection: authorCollection, el: $('.street-side-table')})

$('#author-form').submit(function(e) {
  e.preventDefault();
  var authorName = $('#author-input').val();
  authorCollection.add({name: authorName})
  $('#author-input').val('');
})

})
