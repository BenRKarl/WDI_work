var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}};

GutenbergApp.Views.AuthorListView = Backbone.View.extend({
  initialized: function(){
    this.listenTo(this.collection, 'change', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var authorView = new GutenbergApp.Views.authorView({model:author});
      that.$el.append(authorView.render().el);
    })
    return this;
  }
});
