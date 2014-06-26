//THIS DESIGNATES THE NAMESPACE
var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(monkey){
      var newMonkeyView = new Bananapp.Views.MonkeyView({ model: monkey });
      that.$el.append( newMonkeyView.render().el );
    });
    return this;
  }
})
