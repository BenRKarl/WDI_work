var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientListView = Backbone.View.extend({
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }

})

var JuiceModel = Backbone.Model.extend({
  defaults:{
    ingredients: IngredientCollection,
  }
});

var JuiceCollection = Backbone.Model.extend({
  model: Juice
})

var JuiceView = Backbone.View.extend({
  template: _.template('<ul><%= name %></ul>')
  render: function(){
    this.$el.empty();
    this.$el.html(this.template( this.model.attributes))
    return this;
  }
})
