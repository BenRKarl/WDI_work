//Ingredient Model
var Ingredient = Backbone.Model.extend({
  defaults:{
    name: "",
    amount: 0
  }
});

//Ingredient Collection
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

//Ingredient Model View
var IngredientView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html(renderedHTML);
    return this;
  },
  events: {
    'click button[name="delete-ingredient"]':'removeIngredient'
  },
  removeIngredient: function(){
    this.model.destroy();
    this.remove();
  }
});

//Ingredient Collection View
var IngredientCollectionView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var newIngredientView = new IngredientView({model: ingredient});
      that.$el.append(newIngredientView.render().el);
    });
    return this;
  }
});
