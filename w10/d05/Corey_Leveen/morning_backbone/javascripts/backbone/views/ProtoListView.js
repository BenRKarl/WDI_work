var morningBackbone = morningBackbone || { Models : {}, Collections : {}, Views : {} };

morningBackbone.Views.ProtoListView = Backbone.View.extend({
  initialize : function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(proto){
      var protoView = new morningBackbone.Views.ProtoView( { model : proto });
      that.$el.append(protoView.render().el);
    });
    return this;
  }
});
