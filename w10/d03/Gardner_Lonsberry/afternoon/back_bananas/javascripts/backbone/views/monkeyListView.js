var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyListView = Backbone.View.extend({
  initalize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
    tagName: "ul",
    render: function(){
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(ele){
        var monkeyView = new Bananapp.Views.MonkeyView({model: ele});
        that.$el.append( monkeyView.render().el );
      })
      return this;
    }
});