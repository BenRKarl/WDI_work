var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

// listView = new IngredientListView({collection: collection, el: $('ingredient-list')});
var IngredientListView = Backbone.View.extend({
initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);

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

})

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.on('add', function(){console.log('something was added')});
  ingredients.add(strawberry);
  ingredients.on('remove', function(){console.log('something was removed')});
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);

  listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
 turmeric = new Ingredient({name: 'turmeric', amount: 30});
  listView.collection.add(turmeric);
})
