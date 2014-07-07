var GutenbergApp = GutenbergApp || {
  Models: {},
  Views: {},
  Collections: {},
  Router: null,
  initialize: function(){
    this.ViewManager = new GutenbergApp.Views.ViewManager({el: $('body')});
    this.router = new GutenbergApp.Router();
    Backbone.history.start();
    // this.collection = new App.Collections.ShapeCollection();
    // seedCollection(3000, this.collection);
    // var view  = new App.Views.ShapeListView({collection: this.collection, el: $('body')});
    // view.render();
  } };


GutenbergApp.Views.AuthorView = Backbone.View.extend({
  template: _.template($('#author-template').html()),
  tagName: 'li',
  render: function(){
    var that = this;
    this.$el.html( this.template({author: this.model.attributes } ) );
    this.$el.find('.show-button').on('click', function(){
      GutenbergApp.router.navigate("#authors/" + that.model.get('id'), {trigger: true});
    })
    var bookListView = new GutenbergApp.Views.BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.books')
    });
    return this;
  }
});

GutenbergApp.Views.ShowView = Backbone.View.extend({
  template: _.template($('#show-template').html()),
  url: '/authors' + this.id,
  render: function(){
    this.$el.html( this.template({author: this.model.toJSON()} ) );
    this.model.get('books').fetch()
    var bookListView = new GutenbergApp.Views.BookListView({
      collection: this.model.get('books'),
      el: this.$el.find('.books')
    });
    bookListView.render();
    return this;
  }
});

