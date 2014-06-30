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

GutenbergApp.Views.AuthorListView = Backbone.View.extend({
  // initialize: function(){
  //   this.listenTo(this.collection, 'change', this.render)
  // },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new GutenbergApp.Views.AuthorView({model: author});
      that.$el.append(authorView.render().el);
    });
    return this;
  }
});
