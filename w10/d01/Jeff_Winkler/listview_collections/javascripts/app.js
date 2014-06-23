
var Ingredient = Backbone.Model.extend({});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient_template').html()),
  render: function() {
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

var Recipe = Backbone.Collection.extend({
  model: Ingredient
});


var RecipeView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient) {
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});

var Juice = Backbone.Model.extend({});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  tagName: 'div',
  template: _.template($('#juice_template').html()),
  render: function() {
    this.$el.html(this.template({juice: this.model.toJSON()}));
    currRecipeView = new RecipeView({collection: this.model.get('recipe'), el: this.$el});
    currRecipeView.render();
    this.$el.append(currRecipeView.el)
    return this;
  }
});



$(function(){
  var recipe = new Recipe();
  strawberry = new Ingredient({name: 'strawberry', amount: 12});
  recipe.on('add', function(){console.log('something added')});
  recipe.add(strawberry);
  recipe.on('remove', function(){console.log('removed')});
  //recipe.remove(strawberry);
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  recipe.add(cabbage);
  recipeView = new RecipeView({collection: recipe, el: $('#recipe')});
  var tumeric = new Ingredient({name: "tumeric", amount: 6});
  recipeView.collection.add(tumeric);

  //recipeView.render();

  juiceUno = new Juice({name: 'Uno!', recipe: recipe});
  unoView = new JuiceView({model: juiceUno});

});








