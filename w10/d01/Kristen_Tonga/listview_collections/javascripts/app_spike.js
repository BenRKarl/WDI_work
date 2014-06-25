var Juice = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    ingredients: []
  }
});

var Ingredient = Backbone.Model.extend({
  defaults: {
    name: 'n/a',
    ingredients: 'n/a'
  }
});

var IngredientView = Backbone.View.extend({
  template: _.template('<li><%= name %>, quantity: <%= amount %></li>'),
  render: function(){
    this.$el.append( this.template( this.model.attributes))
    return this
  }
});

var IngredientListView = Backbone.View.extend({
  template: _.template('<ul><%= _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({ model: ingredient });
      that.$el.append(ingredientView.render().el)%></ul>')
  render: function(){
    this.$el.append( this.template( this.model.attributes))
  }
});

var JuiceView = Backbone.View.extend({
  template: _.template('<div><h1>Juice: <%= title %></h1><ul><li><%= ingredientListView(this.models.ingredients) %></li>')
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes))
    return this
  }
});

var JuiceListView = Backbone.View.extend({
  template: _.template('<ul><%= _.each(this.collection.models, function(juice){
      var juiceView = newJuiceView({ model: juice });
      that.$el.append(juiceView.render().el)%
    %><li>')
})

