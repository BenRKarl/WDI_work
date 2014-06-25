var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };

 Bananapp.Views.MonkeyListView = Backbone.View.extend({
  //will publish to .monkey-list on index.html
  initialize: function(){
   this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(monkey){
      var monkeyView = new Bananapp.Views.MonkeyView({model: monkey});
      that.$el.prepend( juiceView.render().el );
    });
    return this;
  }
 });

// var JuiceListView = Backbone.View.extend({
//  initialize: function(){
//   this.listenTo(this.collection, 'all', this.render);
//  },
//  tagName: 'ul',
//  render: function(){
//   var that = this;
//   this.$el.empty();
//   _.each(this.collection.models, function(juiceModel){
//     var juiceView = new JuiceView({model: juiceModel});
//     that.$el.append( juiceView.render().el );
//   });
//   return this
//  }
// });
