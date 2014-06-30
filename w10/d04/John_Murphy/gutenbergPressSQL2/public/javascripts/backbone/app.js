var GutenbergApp = GutenbergApp || {
  Models: {},
  Views: {},
  Collections: {},
  Router: null,
  initialize: null
}


GutenbergApp.initialize = function(){
    this.ViewManager = new GutenbergApp.Views.ViewManager({el: $('body')});
    this.router = new GutenbergApp.Router();
    Backbone.history.start();
    // this.collection = new App.Collections.ShapeCollection();
    // seedCollection(3000, this.collection);
    // var view  = new App.Views.ShapeListView({collection: this.collection, el: $('body')});
    // view.render();
  };

GutenbergApp.Router = Backbone.Router.extend({
  initialize: function(){
    this.collection = new GutenbergApp.Collections.AuthorCollection();
    this.collection.fetch({async:false});
    alert('router ready')
  },
  routes : {
    ''                         : 'index',
    'authors/:id'              : 'findById'
  },
  index: function(){
    authorListView = new GutenbergApp.Views.AuthorListView({
      collection: GutenbergApp.router.collection
    });
    GutenbergApp.ViewManager.display(authorListView);
    return this;
  },
  findById: function(id){
    // var bookCollection = new GutenbergApp.Collections.BookCollection()
    // bookCollection.url = '/authors/' + id + '/books';
    // bookCollection.fetch({async:false});
    // var bookListView = new GutenbergApp.Views.BookListView({
    //   collection: bookCollection
    // });
    var modelId = parseInt(id)
    var model = GutenbergApp.router.collection.findWhere({
      id: modelId
      });
    var showView = new GutenbergApp.Views.ShowView({
      model: model
    });
    GutenbergApp.ViewManager.display(showView);
  }
})

GutenbergApp.Views.ViewManager = Backbone.View.extend({
  initialize: function(){
  },
  display: function(view){
    var previousView = this.currentView || null;
    var nextView = view;
    if (previousView) {
      previousView.remove();
    };
    nextView.render().$el.appendTo(this.$el);
    this.currentView = nextView;
  }
})

// GutenbergApp.initialize = function(){
//   authors = new GutenbergApp.Collections.AuthorCollection();

//   authorListView = new GutenbergApp.Views.AuthorListView({
//     collection: authors,
//     el: $('.author-lounge')
//   });
//   authors.fetch({
//     success: function(){
//       authorListView.render()
//     }
//   });

//   GutenbergApp.authors = authors;
//   GutenbergApp.authorListView = authorListView;
// };



$(function(){

  GutenbergApp.initialize();

})
