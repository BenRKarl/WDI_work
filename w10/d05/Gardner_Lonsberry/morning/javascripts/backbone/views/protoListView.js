var DivApp = DivApp || { Models: {}, Views: {}, Collections: {} };

DivApp.Views.AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'change', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(author){
      var protoView = new DivApp.Views.AuthorView({model: author});
      that.$el.append(protoView.render().el);
    })
    return this;
  }
});