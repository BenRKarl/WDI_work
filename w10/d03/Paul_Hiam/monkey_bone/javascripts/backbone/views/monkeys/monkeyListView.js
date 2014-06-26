var ZooApp = ZooApp || { Models: {}, Collections: {}, Views: {} };

ZooApp.Views.MonkeyListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(monkey){
      var monkeyView = new ZooApp.Views.MonkeyView({
        model: monkey });
      that.$el.append(monkeyView.render().el );
     });
    return this;
  }
});