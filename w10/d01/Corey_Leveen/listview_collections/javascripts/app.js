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

})

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.on('add', function(){console.log('something was added')});
  ingredients.add(strawberry);
  ingredients.on('remove', function(){console.log('something was removed')});
  ingredients.remove(strawberry);
})

