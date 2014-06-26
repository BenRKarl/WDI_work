//  ***** Model *****
var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});



//  ***** Collection *****
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

//  ***** View *****
var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render:function(){
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );
    return this;
  }
});

//  ***** List View *****
var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(authorModel){
      var authorView = new AuthorView({model: authorModel});
      that.$el.append( authorView.render().el );
    });
    return this;
  }
});

//******************BOOK***************

//*****MODEL*****
var Book = Backbone.Model.extend({
  defaults: {
    title: 'untitled'
  }
});


//*****COLLECTION*****
var BookCollection = Backbone.Collection.extend({
  model: Book
})

//*****VIEW*****
var BookView = Backbone.View.extend({
  // initialize: function(){
  //   this.listenTo(this.model, 'all', this.render);
  // }
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render:function(){
    var renderedHTML = this.template(this.model.attributes);
    this.$el.html(renderedHTML);
    return this;
  }
});

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(bookModel){
      var bookView = new BookView({model: bookModel});
      that.$el.append(bookView.render().el);
    })
  return this;
  }
})

var authorCollection;
var authorListView;

$(function(){

  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
      collection: authorCollection,
      el: $('.street-side-table')
    });

  // authorCollection.add({name: 'Lichard'})

  $('form.new-author').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('.author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName});
  })

  $('form.new-book').on('submit', function(e){
    e.preventDefault();
    var bookNameField = $('book-name');
    var author
  })

})



