var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON()}));
    //template takes an object literal and you can reference it above ({object literal with an object is })
    // this.$el.html(this.template(this.model.toJSON()));
    return this;
  }
});



var IngredientListView = Backbone.View.extend({
 //tagName: 'ul',
 initialize: function(){
  this.listenTo(this.collection, 'add', this.render);
  //why does the line above add the turmeric??? NB. the correct syntax for listenTo
  this.listenTo(this.collection 'remove', this.render);
 },

  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      //NB. the syntax for _.each(this.collection...){}
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
})

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  // var pineapple = new Ingredient({name: 'pineapple', amount: 5});
  ingredients.on('add', function(){console.log("something a little bit extra was added")});
  ingredients.add(strawberry);
  ingredients.on('remove', function(){console.log("insufficient micronutrient content")});
  // ingredients.remove(strawberry);

  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);

  var listView = new IngredientListView({collection: ingredients, el: $('#ingredients_list')});
  listView.render();

  var turmeric = new Ingredient({name: 'turmeric', amount: 30});
  ingredients.add(turmeric);

  // ingredients.remove(turmeric);
  listView.collection.remove(turmeric);
})


