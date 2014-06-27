var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyListView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.collection, 'all', this.render);
   },
   render: function(){
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(monkeyModel){
         var monkeyView = new Bananapp.Views.MonkeyView({model: monkeyModel});
         that.$el.append(monkeyView.render().el);
      });
      return this;
   }

})