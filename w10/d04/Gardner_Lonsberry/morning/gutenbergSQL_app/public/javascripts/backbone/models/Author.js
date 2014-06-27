var GutenbergApp = GutenbergApp | Models: {}, Views: {}, Collections: {} };

var GutenbergApp.Views.AuthorListViews = Backbone.View.extend({
initialize: function(){
  this.listenTo(this.collection, 'all', this.render)
},
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new GutenbergApp.Views.authorView({model: author});
      this.$el.append(authorView);
    })
  return this;
  }
})