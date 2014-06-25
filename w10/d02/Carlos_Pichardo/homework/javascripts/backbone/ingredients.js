//Ingredient Model
var Ingredient = Backbone.Model.extend({});

//Ingredient Collection
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

//Ingredient Model View
var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON() }));
    return this;
  }
});

//Ingredient Collection View
var IngredientListView = Backbone.View.extend({
  template: _.template('Juice Ingredients: '),
  render: function(){
    var that = this;
    this.$el.empty();
    this.$el.append(this.template());
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});