var Ingredient = Backbone.Model.extend({

});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
tagName: 'li',
template: _.template($('#ingredient-template').html()),
render: function(){
  this.$el.html(this.template({ ingredient: this.model.toJSON() }));
  return this;
  }
});


var IngredientListView = Backbone.View.extend({
  tagName: 'ul',
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
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

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});

  ingredients.add(strawberry);
  // ingredients.remove(strawberry);
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);

  var listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
  var tumeric = new Ingredient({name: 'tumeric', amount: 30});
  ingredients.add(tumeric);

})

