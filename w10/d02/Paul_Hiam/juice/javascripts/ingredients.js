var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient

});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingred-temp').hmtl()),
  render: function(){
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }

})


var IngredientListView = Backbone.View.Extend({
  initialize: function(){
    this.listenTo(this.colleciton, 'add', this.render);
    this.listenTo(this.colleciton, 'remove', this.render);
  },

  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});