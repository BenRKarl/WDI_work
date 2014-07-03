var Bananapp = Bananapp || { Routers: {}, Models: {}, Collections: {}, Views: {}, };

Bananapp.Views.MonkeyListView =  Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty()
    _.each(this.collection.models, function(monkey){
      var monkView = new Bananapp.Views.MonkeyView({model: monkey});
      that.$el.prepend(monkView.render().el);
    });
    return this;
  }
});
