// **** MODEL ****

var Ingredient = Backbone.Model.extend({
  defaults:{
    ingredient: '',
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});


// **** VIEW ****

var IngredientView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
  },
  tagName: 'li',
  template: _.template( $('#ingredient-template').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html(this.template( this.model.attributes) )
    return this;
  },
  events: {
    'click button[name="delete"]': 'removeIngredient'
  },
  removeIngredient: function(){
    this.model.destory();
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  // initialize: function(){
  //   this.listenTo(this.collection, 'all', this.render);
  // },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append( ingredientView.render().el )
    })
    return this;
  }
});









$(function(){
  console.log("deeply... ")
})
