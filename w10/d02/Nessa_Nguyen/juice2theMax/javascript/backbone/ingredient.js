var Ingredient = Backbone.Model.extend({
  defaults: {
    name: 'apple',
    quantity: '1 fruit'
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function() {
    var object = this.template(this.model.attributes);
    this.$el.html(object);
    return this;
  }
  events: {
    'click button[name="remove"]': 'removeIngredient'
  },
  removeIngredient: function() {
    this.model.destroy();
    this.remove();
  }
});

var IngredientListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient) {
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
})
