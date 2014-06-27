var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'change', this.render);
  },
  render: function(){
    this.$el.empty();
    var that = this;
    _.each(this.collection.models, function(author){
      var authorView = new GutenbergApp.Views.AuthorView({model: author});
      that.$el.append( authorView.render().el );
    });
    return this;
  }
});
