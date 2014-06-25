//  ************** INGREDIENT **************


//  ******* Model *******
var Ingredient = Backbone.Model.extend({});



//  ******* Collection *******
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});


//  ******* Model View *******
var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template( $('#ingredient-template').html()),
  render: function(){
    this.$el.empty();
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );
    return this;
  },
  events: {
    'click button[name="free"]': 'removeBook'
  },
  removeBook: function(){
    this.model.destroy();
    return this;
  }
});

// ****** List View ******

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