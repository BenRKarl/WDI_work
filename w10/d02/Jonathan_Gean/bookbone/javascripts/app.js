var Author = Backbone.Model.extend({})

var AuthorView = Backbone.View.extend({
  tagName: 'li',
   template: _.template($('#author-template').html()),
   render: function(){
     var html = this.template( this.model.attributes )
     this.$el.html(html);
    return this;
    },
    events: {
      'click button': 'removeAuthor',
      'mouseover': 'fadeSome',
      'mouseleave': 'fadeNone',
    },
    removeAuthor: function(){
      this.model.destroy();
      this.remove();
    },
    fadeSome:function(){
      this.$el.css('opacity', 0.2);
    },
    fadeNone:function(){
      this.$el.css('opacity', 1)
    }
})

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.collection, 'all', this.render)
  },
   tagName: 'ul',
   render: function(){
     var that = this;
     this.el.innerHTML = ""
     _.each(this.collection.models, function(Author){
      var authorView = new AuthorView({model: Author});
      that.$el.append(authorView.render().el);
    });
    return this;
  }
})

var Book = Backbone.Model.extend({})

var BookView = Backbone.View.extend({
  tagName: 'li',
   template: _.template($('#book-template').html()),
   render: function(){
     var html = this.template( this.model.attributes )
     this.$el.html(html);
    return this;
    }

})

var BookCollection = Backbone.Collection.extend({
  model: Book
});

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.collection, 'all', this.render)
  },
   tagName: 'ul',
   render: function(){
     var that = this;
     this.el.innerHTML = ""
     _.each(this.collection.models, function(Book){
      var bookView = new BookView({model: Book});
      that.$el.append(bookView.render().el);
    });
    return this;
  }
})

$(function(){
  // var lichard = new Author({name: 'Lichard DeGray'});
  // var lichardView = new AuthorView({model: lichard});
  // var lichardView.render().el;
  authorCollection = new AuthorCollection();
  // authorCollection.add({name: 'Lichard deGray'});
  // authorCollection.add({name: 'Kathew Bod'});
  authorListView = new AuthorListView({collection: authorCollection, el: $('.street-side-table')});
  authorListView.render().el;
  bookCollection = new BookCollection();
  bookCollection.add({name: 'In The Shadw of em..'})
  bookListView = new BookListView({collection: bookCollection, el: $('.street-side-table')});
  bookListView.render().el;

  $('form.new-author').on('submit', function(e){
    e.preventDefault();
    var authorNameField = $('.author-name');
    var authorName = authorNameField.val();
    authorNameField.val('');
    authorCollection.add({name: authorName});

  })
  $('form.new-book').on('submit', function(e){
    e.preventDefault();
    var bookNameField = $('.book-name');
    var bookName = bookNameField.val();
    bookNameField.val('');
    bookCollection.add({name: bookName});

  })
})
