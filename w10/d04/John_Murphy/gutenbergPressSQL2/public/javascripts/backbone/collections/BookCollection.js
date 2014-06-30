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

GutenbergApp.Collections.BookCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Book

});
