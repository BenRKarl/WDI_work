// Ingredients

var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON()}));
    // this.$el.html(this.template(this.model.toJSON()));
    return this;
  }
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


// Juices

var Juice = Backbone.Model.extend({
  model: IngredientCollection
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function(){
    this.$el.html(this.template({ juice: this.model.toJSON}));
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry  = new Ingredient({name: 'strawberry', amount: 13});
  var apple = new Ingredient({name: 'apple', amount: 2});
  var banana = new Ingredient({name: 'banana', amount: 1});
  var blueberry = new Ingredient({name: 'blueberry', amount: 1});
  var lemon = new Ingredient({name: 'lemon', amount: 1});
  var ginger = new Ingredient({name: 'ginger', amount: 1});
  ingredients.on('add', function(){console.log("strawberries, check")});
  ingredients.add(strawberry);
  ingredients.on('add', function(){console.log("cored apple")});
  ingredients.add(apple);
  ingredients.on('add', function(){console.log("bananas for protein")});
  ingredients.add(banana);
  ingredients.on('add', function(){console.log("antioxidants")});
  ingredients.add(blueberry);
  ingredients.on('add', function(){console.log("tang")});
  ingredients.add(lemon);
  ingredients.on('add', function(){console.log("zing")});
  ingredients.add(ginger);

  listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});


  var juiceCollection = new JuiceCollection();
  var tropicalia = new Juice({name: 'tropicalia', ingredients: 'strawberry', 'apple', 'banana'});
  var berry = new Juice({name: 'berry', ingredients: 'strawberry', 'blueberry', 'banana'});
  var zinger = new Juice({name: 'zinger', ingredients: 'strawberry', 'lemon', 'ginger'});
});
