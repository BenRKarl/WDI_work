// *** Model ***
var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});


// *** Collection ***
var AuthorCollection = Backbone.Collection.extend({
  model: Author       // backbone now allows us to pass in object literal and it will
});                   // create the model and insert for us


// *** View/ListView ***  use template and hide here.  when call render, add into
var AuthorView = Backbone.View.extend({  // template and set painting($el) to html
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
    var renderedhtml = this.template( this.model.attributes ); // returns HTML
    this.$el.html(renderedhtml); //this$el is the tagName 'li'
    return this;
  },
  events: {
    'click button[name="free-button"]': 'removeAuthor',
    'mouseover': 'fadeSome',
    'mouseleave': 'fadeNone',
  },
  removeAuthor: function(){
    this.model.destroy();     // erases the model from collection freeing up memory
    this.remove();            // removes view from DOM
  },
  fadeSome: function(){
    this.$el.css('opacity', 0.2);
  },
  fadeNone: function(){
    this.$el.css('opacity', 1);
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(authorModel){    //for each author in collection
      var authorView = new AuthorView({model: authorModel}); // make me a new author view
      that.$el.append( authorView.render().el );          // append the new author views to $el
    });
    return this;
  }
});


// *** Book Model *** √
var Book = Backbone.Model.extend({
  defaults: {
    title: 'no title'
  }
});

// *** Book Collection *** √
var BookCollection = Backbone.Collection.extend({
  model: Book
});


// *** Book View/ListView

var BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();
    var renderedHTML = this.template(this.model.attributes);
    this.$el.html(renderedHTML);
    return this;
  }
});

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new BookView({model: book});
      that.$el.append( bookView.render().el);
    })
    return this;
  }
});



var authorCollection;
var authorListView;
var bookCollection;
var bookListView

$(function(){

  var lichard     = new Author({name: 'Lichard DeGray'});
  var lichardView = new AuthorView({model: lichard});
  lichardView.render().el;
  // produces an HTML node with the authors name

  authorCollection  = new AuthorCollection();
  authorListView    = new AuthorListView({
    collection: authorCollection,
    el: $('.street-side-table')
  });
  // authorCollection.add({name: 'Lichard DeGray'});
  // authorCollection.add({name: 'Katthew Bod'});
  // authorListView.render()
  // produces an HTML ul node with author names listed
  $('.author-submit').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('.author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName});
  });

  var greatbook = new Book({title: 'The Great Book'})
  var bookView  = new BookView({model: greatbook});
  bookView.render().el
  bookListView  = new BookListView({
    collection: bookCollection,
    el: $('.street-side-table')
  });


})
