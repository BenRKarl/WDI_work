// Ingredients

var Ingredient = Backbone.Model.extend({
  defaults:
  fruit: '',
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'add', this.render)
    this.listenTo(this.model, 'remove', this.render)
  },
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),

  render: function(){
    this.$el.empty();
    this.$el.html(this.template({ ingredient: this.model.attributes) )
    // this.$el.html(this.template(this.model.toJSON()));
    return this;
  },
  events: {
    'click button': 'removeIngredient'
  },
  removeIngredient: function(){
    this.model.remove();
    return this;
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

