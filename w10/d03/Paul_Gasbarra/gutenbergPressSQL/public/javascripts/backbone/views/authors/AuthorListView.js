var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}}

GutenbergApp.Views.AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render)
  },

  render: function(){
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new GutenbergApp.Views.AuthorView(model: author);
      this.$el.append(authorView);
    })
    return this;
  }
})
