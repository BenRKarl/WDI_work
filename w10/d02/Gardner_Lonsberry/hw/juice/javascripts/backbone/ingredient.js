//  ************** INGREDIENT **************


//  ******* Model *******
var Ingredient = Backbone.Model.extend({
  defaults:{
    name: '',
  }
});


//  ******* Collection *******
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});


//  ******* View *******
var IngredientView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
  },
  tagName: 'li',
  template: _.template( $('#ingredient-template').html() ),
  render: function(){
  
    this.$el.html( this.template( this.model.attributes ) )
    return this;
  },
  events: {
    'click button[name="free"]': 'removeIngredient'
  },
  removeIngredient: function(){
    this.model.destroy();
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ele){
      var ingredientView = new IngredientView({model: ele});
      that.$el.append( ingredientView.render().el )
    })
    return this;
  }
});