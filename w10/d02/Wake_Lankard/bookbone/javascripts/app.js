var Author = Backbone.Model.extend({
  defaults: {
    name: 'anonymous'
  }
});

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template :_.template($('#author-template').html()),
  render: function(){
    var html = this.template( this.model.attributes )
    this.$el.html(html);
    return this;
  },
  events: {
    'click button': "removeAuthor"
  },
  removeAuthor: function(){
    this.model.destroy();
    this.remove();
  }

});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new AuthorView({model: author});
      that.$el.append(authorView.render().el);
    });
    return this;
  }

});

var Book = Backbone.Model.extend({
  defaults: {
    title: 'no title'
  }
});

var BookCollection = Backbone.Collection.extend({
  model: Book
});

var BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();
    var html = this.template( this.model.attributes);
    this.$el.html(html);
    return this;
  }
    
})

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function(){
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new BookView({model: book});
      that.$el.append( bookView.render().el );

    })
    return this;
  }

})





$(function(){
   var authorCollection = new AuthorCollection();
   var authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('.street-side-table')
  });
   $('.author-form').submit(function(e){
      e.preventDefault();
      var newAuthor = new Author({ name: $('.author-input').val() })
      authorCollection.add(newAuthor);
      $('.author-input').val('');
   })

})