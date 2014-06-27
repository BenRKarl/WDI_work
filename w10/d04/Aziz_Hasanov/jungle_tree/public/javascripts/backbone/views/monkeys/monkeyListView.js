var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(i) {
      var eachMonkey = new Bananapp.Views.MonkeyView({model: i});
      that.$el.append(eachMonkey.render().el);
    });
    return this;
  }
})