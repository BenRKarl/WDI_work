var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}};

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'change', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var AuthorView = new GutenbergApp.Views.AuthorView({model: author});
      that.$el.append(AuthorView.render().el);
    })
    return this;
  }
});
