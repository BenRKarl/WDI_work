var Author = Backbone.Model.extend({

});

var AuthorCollection = Backbone.Collection.extend({
  model : Author
});

var AuthorView = Backbone.View.extend({
  initialize : function() {
    this.listenTo(this.model, 'all', this.render);
  },
  tagName : 'li',
  template : _.template($('#author-template').html()),
  render : function(){
    var html = this.template( {author : this.model.toJSON()} );
    this.$el.html(html);
    return this;
  },
  events : {
    'click button' : 'removeAuthor',
    'mouseover' : 'fadeSome',
    'mouseleave' : 'fadeNone'
  },
  removeAuthor : function(){
    this.model.destroy();
    this.remove();
  },
  fadeSome : function(){
    this.$el.css('opacity', 0.2);
  },
  fadeNone : function(){
    this.$el.css('opacity', 1.0);
  }
});

var AuthorListView = Backbone.View.extend({
  initialize : function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName : 'ul',
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new AuthorView( {model : author} );
      that.$el.append( authorView.render().el );
    });
    return this;
  }
});



var Book = Backbone.Model.extend({

});

var BookCollection = Backbone.Collection.extend({
  model : Book
});

var BookView = Backbone.View.extend({
  tagName : 'li',
  template : _.template( $('#book-template').html() ),
  render : function(){
    var html = this.template( {book : this.model.toJSON()} );
    this.$el.html(html);
    return this;
  }
});

var BookListView = Backbone.View.extend({
  tagName : 'ul',
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new BookView( {model : book} );
      that.$el.append( bookView.render().el );
    });
    return this;
  }
});




$(function(){
  lichard = new Author( {name : 'Lichard DeGray'} );
  lichardView = new AuthorView( {model : lichard} );
  lichardView.render().el;

  theFountainhead = new Book ( {title : 'The Fountainhead'} );
  gravitysRainbow = new Book ( {title : 'Gravitys Rainbow'} );

  theFountainheadView = new BookView( {model : theFountainhead} );
  theFountainheadView.render().el;

  library = new BookCollection();
  library.add(theFountainhead);
  library.add(gravitysRainbow);
  libraryView = new BookListView( {collection : library, el : $('#book-list')} );
  libraryView.render().el;



  authorCollection = new AuthorCollection();
  authorCollection.add( lichard );
  authorCollection.add( {name : 'Kathew Bod'} );
  authorListView = new AuthorListView( {collection : authorCollection, el : $('#author-list')} );
  authorListView.render().el;

  $('form.author-name').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('#author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName})
  })
})
