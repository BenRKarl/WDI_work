var BananaApp = BananaApp || { Models: {}, Collections: {}, Views: {} };

BananaApp.Views.MonkeyListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(monkey) {
      var monkeyView = new BananaApp.Views.MonkeyView({model: monkey});
      that.$el.append(monkeyView.render().el);
      return this;
    });
  }
})
