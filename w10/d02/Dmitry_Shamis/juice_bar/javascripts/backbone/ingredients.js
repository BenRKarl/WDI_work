var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function() {
    this.$el.empty();
    var renderedHTML = this.template({ingredient: this.model.toJSON()});
    this.$el.html(renderedHTML);
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient) {
      var ingredientView = new IngredientView({model: ingredient})
      that.$el.append(ingredientView.render().el)
    });
    return this;
  }
})
