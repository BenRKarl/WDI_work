var Ingredient = Backbone.Model.extend({});
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});
var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function() {
    this.$el.html(this.template({
      ingredient: this.model.toJSON() })
    );
    return this;
  }
});
var IngredientsListView = Backbone.View.extend({
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



// Juice //


var Juice = Backbone.Model.extend({
  defaults: {
    name: 'Ice',
    ingredients: []
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function() {
  var that = this;
  this.$el.empty();
  this.$el.html(this.template({juice: this.model.toJSON()}))
  _.each(this.model.attributes.ingredients, function(ingredient) {
    var ingredientView = new IngredientView({ model: ingredient });
    that.$el.append(ingredientView.render().el);
  });
  return this;
}
});


var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice) {
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});




$(function() {
  
  var apple       = new Ingredient({name: 'apple', quantity: '5'});
  var banana      = new Ingredient({name: 'banana', quantity: '3'});
  var carrot      = new Ingredient({name: 'carrot', quantity: '2'});
  var date        = new Ingredient({name: 'date', quantity: '4'});
  var ingredients = new IngredientCollection();
  ingredients.add(apple)
  ingredients.add(date)

  var tootyFruity = new IngredientCollection();
  tootyFruity.add([apple, banana, carrot, date]);

  var appleJuice  = new Juice({name: 'apple juice', ingredients: ingredients});
  


  var juiceCollection = new JuiceCollection();
  juiceCollection.add([appleJuice]);
  
  var juiceView       = new JuiceView({ collection: juiceCollection });


  var juiceListView   = new JuiceListView({collection: juiceCollection, el: $('#juice-list')});
  juiceListView.render();
});