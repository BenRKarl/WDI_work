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


$(function(){

var ingredients = new IngredientCollection();
var strawberry = new Ingredient({name: 'strawberry', amount: 4})
ingredients.on('add', function(){console.log('something happened')});

ingredients.on('remove', function(){console.log('something happened')});
var cabbage = new Ingredient({name:'cabbage', amount:4});
ingredients.add(cabbage);

listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')}) //should be a ul wi that id**

})