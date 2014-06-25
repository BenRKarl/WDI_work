

// ***************************************************************
// *********************      B O O K     ************************
// ***************************************************************


// *********   Model   *********
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a'   
  }
});

// *********   Collection   *********
var BookCollection = Backbone.Collection.extend({
  model: Book
});

// *********   BookView for Model   *********
var BookView = Backbone.View.extend({

  initialize: function(){
    this.listenTo(this.model, 'all', this.render);   
  },

  tagName: 'li',

  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();

    // EITHER THIS
    // --> corresponds with index.html template ..  <h2><%= author.name %></h2>
    //this.$el.html(this.template({book: this.model.toJSON()}));

    // OR 
    // --> corresponds with index.html template ..  <h2><%= name %></h2>
    var renderedHTML = this.template(this.model.attributes);
    this.$el.html(renderedHTML);

    return this;
  }
});

// *********   BookListView for Collection   *********
var BookListView = Backbone.View.extend({
  tagName: 'ul',

  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);   
  },

  render: function(){
    var that = this;
    this.$el.empty();

    _.each(this.collection.models, function(book){
      // debugger;
      var bookView = new BookView({model: book});
      that.$el.append(bookView.render().el);
    });

    return this;
  }

});


