var Ingredient = Backbone.Model.extend({});

var Juice = Backbone.Model.extend({
  defaults: {
    name: 'Water',
    ingredients: []
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
})

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function() {
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function() {
    this.$el.html(this.template({juice: this.model.toJSON()}))
    var juiceIngredients = this.model.attributes.ingredients;
    var juiceIngredientsList = new IngredientListView({collection: juiceIngredients, el: $(this.el).find('ul')});
    juiceIngredientsList.render(); // The el is not being passed through...
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render)
    this.listenTo(this.collection, 'remove', this.render)
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

var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render)
    this.listenTo(this.collection, 'remove', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice) {
      var juiceView = new JuiceView({model: juice})
      that.$el.append(juiceView.render().el)
    })
  }
})

$(function() {
  // var ingredients = new IngredientCollection();
  // var strawberry = new Ingredient({name: 'strawberry', amount: 6});
  // ingredients.on('add', function(){console.log('Something was added')});
  // ingredients.add(strawberry);

  // ingredients.on('remove', function(){console.log('Your juice has now become inferior')});
  // // ingredients.remove(strawberry);
  // var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  // ingredients.add(cabbage);

  // var listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
  // var tumeric = new Ingredient({name: 'tumeric', amount: 30})
  // ingredients.add(tumeric);
  // setTimeout(function() {
  //   ingredients.remove(tumeric)
  // }, 1000)

  var strawberry = new Ingredient({name: 'strawberry', amount: 5});
  var banana = new Ingredient({name: 'banana', amount: 2});

  var ingredients = new IngredientCollection();
  ingredients.add(strawberry);
  ingredients.add(banana);

  var sb = new Juice({name: 'Strawberry Banana', ingredients: ingredients});

  var juices = new JuiceCollection();
  juices.add(sb);

  var listView = new JuiceListView({collection: juices, el: $('#juices-list')});
  listView.render()

})
