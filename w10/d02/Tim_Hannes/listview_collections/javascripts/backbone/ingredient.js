// **** INGREDIENT ***

// MODEL
var Ingredient = Backbone.Model.extend({
  defaults: {
    name: '',
  }
});

//COLLECTION
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

// VIEW
var IngredientView = Backbone.View.extend ({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.empty();
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );
    return this;
  }
});

//Collection View
var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },//listenTo takes thing your listening to, the listening event, and the callback
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
