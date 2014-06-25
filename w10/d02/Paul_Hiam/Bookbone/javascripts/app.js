//  * MODEL
var Author =  Backbone.Model.extend({
  defaults: {
    name: 'Anonymous',
  }
});

//  * COLLECTION
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

//  * VIEW
var AuthorView = Backbone.View.extend({
    tagname: "li",
    template: _.template($('#author-template').html()), 
  render: function(){
    var html = this.template(this.model.attributes);
    this.$el.html(html);
    return this;

  },
  events: {
    'click button': 'removeA' // or removeA
  },
  removeA: function(){
    this.model.destroy();
    this.remove()
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
    var authorView = new AuthorView({model: author});
      that.$el.append(authorView.render().el)

    });
    return this;
  }
});




var Book = Backbone.Model.extend({
   defaults: {
    title: 'Untitled',
  }
});

var BookCollection = Backbone.Collection.extend({
  model: Book
})

var BookView = Backbone.View.extend({
  tagname: "li",
  template: _.template($('#book-template').html()),
render: function(){
  var html = this.template(this.model.attributes);
  this.$el.html(html);
  return this;

},
events: {
    'click button': 'removeA' // or removeA
  },
  removeA: function(){
    this.model.destroy();
    this.remove()
  }
});

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new BookView({model: book});
      that.$el.append(bookView.render().el)
    });
    return this;
  }
});





$(function(){
   authorCollection = new AuthorCollection();
  var authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('#table')
  });

  authorCollection.add({name: 'Hemmingway'});
  authorCollection.add({name: 'SteinStein'});
  authorListView.render();

$('form.new-author').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('.author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName})
})

  bookCollection = new BookCollection();
  var bookListView = new BookListView({
    collection: bookCollection,
    el: $('#shelf')
  });
  bookCollection.add({title: 'the Sun Also Rises'})
  bookListView.render();

$('form.new-book').on('submit', function(e){
  e.preventDefault();
  var bookTitleField = $('.book-title');
  var bookTitle = bookTitleField.val();
  bookTitleField.val('');
  bookCollection.add({title: bookTitle})
})



});






