// ***************************************************************
// *********************   A U T H O R    ************************
// ***************************************************************

// *********   Model   *********
var Author = Backbone.Model.extend({
  initialize: function(){
    this.set('books', new BookCollection()); 
  },
  defaults:{
    name: 'n/a'   
  }

});

// *********   Collection   *********
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

// *********   AuthorView for Model   *********
var AuthorView = Backbone.View.extend({

  events: {
      // 'click button' : 'remove', // remove is a Backbone function
      'click button[name="free-button"]' : 'removeAuthor', // remove is a Backbone function 
      // 'mouseleave' : 'fadeSome', // mouseleave is a Backbone function 
      // 'mouseover' : 'fadeNone', // mouseover is a Backbone function 
  },

  removeAuthor: function(){
    this.model.destroy(); // destroys the model
    this.remove();  // just removes it from the view, the model still lives on (so it needs combo with destroy)
  },

  // fadeSome: function(){
  //   this.$el.css('opacity', 0.2)
  // },

  // fadeNone: function(){
  //   this.$el.css('opacity', 1)
  // },


   
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
    // this.listenTo(this.model, 'change', this.render);  
  },

  tagName: 'li',

  template: _.template($('#author-template').html()),
  render: function(){
    var that = this;

    // EITHER THIS
    // --> corresponds with index.html template ..  <h2><%= author.name %></h2>
    this.$el.html(this.template({author: this.model.toJSON()}));

    // OR 
    // --> corresponds with index.html template ..  <h2><%= name %></h2>
    // var renderedHTML = this.template(this.model.attributes);
    // this.$el.html(renderedHTML);
    
    var bookListView = new BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.author-books')
    });
    bookListView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var titleField = that.$el.find('input');
      var newTitle = titleField.val();
      titleField.val('');
      that.model.get('books').add({title: newTitle});
    });

    return this;
  }
});

// *********   AuthorListView for Collection   *********
var AuthorListView = Backbone.View.extend({
  tagName: 'ul',

  // events: {
  //     'click button#add': 'addItem'
  // },

  initialize: function(){
    // listenTo should be used for performance reasons and to avoid memory leaks because 
    // events are being destroyed automatically after the list is destroyed (in contrast to the eventlistener 'on')
    this.listenTo(this.collection, 'all', this.render);   
  },

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
