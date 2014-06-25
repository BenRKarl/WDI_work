// Ingredients


// Model
var Ingredient = Backbone.Model.extend({
  defaults : {
    name : ''
  }
});

// Collection
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

// Model View
var IngredientView = Backbone.View.extend({
  tagName : 'li',
  template : _.template($('.ingredient-template').html()),
  render : function(){
    this.$el.empty();
    debugger;
    this.$el.html(this.template( this.model.toJSON() ));
    return this;
  }
});

// List View
var IngredientListView = Backbone.View.extend({
  intialize : function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render : function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      debugger;
      var ingredientView = new IngredientView( {model : ingredient} );
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});
