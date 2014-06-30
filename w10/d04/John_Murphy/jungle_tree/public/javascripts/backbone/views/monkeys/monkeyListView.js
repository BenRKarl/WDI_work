var BananaBone = BananaBone || { Models: {}, Collections: {}, Views: {} };

  BananaBone.Views.MonkeyListView = Backbone.View.extend({
    initialize: function(){
      this.listenTo(this.collection, 'all', this.render)
    },
    // tagName: 'ul',
    // template: _.template($('#monkey-template').html()),
    render: function(){
      var that = this
      this.$el.empty();
      _.each(this.collection.models, function(MonkeyModel){
        var newMonkeyView = new BananaBone.Views.MonkeyView({model: MonkeyModel})
        that.$el.append(newMonkeyView.render().el);
      })
      return this;
  }
});
