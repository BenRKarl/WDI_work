var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorListView = Backbone.View.extend({
  initialize : function(){
    this.listenTo(this.collection, 'all', this.render)
  },
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new GutenbergApp.Views.AuthorView( {model : author} );
      that.$el.append(authorView.render().el);
    })
    return this;
  }
});
