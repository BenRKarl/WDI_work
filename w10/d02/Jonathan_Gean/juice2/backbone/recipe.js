var Ingredient = Backbone.Model.extend({});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient_template').html()),
  render: function() {
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

var Recipe = Backbone.Collection.extend({
  model: Ingredient
});


var RecipeView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient) {
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});
