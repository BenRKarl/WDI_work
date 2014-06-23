var Ingredient = Backbone.Model.extend({});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON() }));
    return this;
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

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
});

//On LOAD
$(function(){
  var ingredients = new IngredientCollection();

  strawberry = new Ingredient({name: "strawberry", amount: 13});
  cabbage = new Ingredient({name: 'cabbage', amount: 1});
  tumeric = new Ingredient({name: 'tumeric', amount: 30});

  ingredients.on('add', function(){ console.log('something was added!') });
  ingredients.on('remove', function(){ console.log('something was removed :(') });

  ingredients.add(strawberry);
  ingredients.add(cabbage);
  ingredients.add(tumeric);

  listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list') });

});
