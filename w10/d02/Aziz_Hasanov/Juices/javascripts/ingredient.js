// create a model
var Ingredient = Backbone.Model.extend({});

// reference model in collection
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  // use "li" tags to display content
  tagName: "li",
  // display content based on that template
  template: _.template($("#ingredient-template").html()),
  render: function() {
    this.$el.empty();
    var renderedHTML = this.template(this.model.attributes);
    this.$el.html(renderedHTML);
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  // acts like window.onload
  initialize: function() {
    // listenning to all/any event and then renders
    this.listenTo(this.collection, "all", this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    // same as data.each do |datum|
    _.each(this.collection.models, function(ingredient) {
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el); // ?????????????????????
    });
    return this;
  }
});

