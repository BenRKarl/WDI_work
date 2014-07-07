// MODELS
var Author = Backbone.Model.extend({
  defaults: {
    name: 'undefined'
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});


// VIEW
var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  template: _.template('<li><%= name %></li><button class=delete>Free</button>'),
  render: function(){
    this.$el.html( this.template (this.model.attributes))
    return this
  },
  events: {
    'click': 'scream',
    'click button.delete': 'remove',
    'mouseleave': 'fadeSome',
    'mouseover': 'fadeNone'
  },
  scream: function(){
    console.log('A HA!!')
  },
  fadeSome:function(){
    this.$el.css('opacity', 0.5);
  },
  fadeNone:function(){
    this.$el.css('opacity', 1);
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var aView = new AuthorView({model: author});
      that.$el.append(aView.render().el)
    })
    return this;
  }
});





// BOOKS
// Models

var Book = Backbone.Model.extend({
  defaults: { title: 'undefined' }
});

var BookCollection = Backbone.Collection.extend({
  model: Book
})

// Views

var BookView = Backbone.View.extend({
  template: _.template("<div class='book'><%- title %></div>"),
  tender: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ))
    return this
  }
});

var BookListView = Backbone.View.extend({
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new BookView({model: book});
      taht.$el.append( bookView.render().el)
    })
  }
})

// ON PAGE LOAD

var authorCollection
var authorListView

$(function(){
  console.log("ah, yes.")

  var lich = new Author({name: 'Lich G'});
  var lichView = new AuthorView({model: lich});

  $('.lich').append(lichView.render().el);
  console.log(lichView.render().el);

  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('.list-view')
  });

  $('form.author-input').on('submit', function(e){
    e.preventDefault();
    console.log('click');
    var authorNameField = $('.author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName })
  })

  var greatness = new Book({title: 'The Great Book'});
  var greatView = new BookView

})
