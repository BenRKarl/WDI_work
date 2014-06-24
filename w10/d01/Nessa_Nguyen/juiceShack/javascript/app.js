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

var Juice = Backbone.Model.extend({
  ingredients: IngredientCollection,
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});
var JuiceView = Backbone.View.extend({
  tagName: 'ul',
//  template: _.template($('#juice-template').html()),
//  initialize: function() {
//    this.listenTo(this.collection, 'add', this.render);
//  },
  render : function () {
    var that = this;
    this.$el.empty();
    this.$el.append(that.model.attributes.name);
    _.each(this.model.attributes.ingredients.models, function(ingredient) {
        var ingredientView = new IngredientView({ model: ingredient });
        that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'add', this.render);
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
  var apple5 = new Ingredient({name: 'apple', quantity: '5 fruit'});
  var celery = new Ingredient({name: 'celery', quantity: '2 stalks'});
  var orange = new Ingredient({name: 'orange', quantity: '2 fruit'});
  var appleCrisp = new IngredientCollection();
  appleCrisp.add([apple5, celery, orange]);

  var apple2 = new Ingredient({name: 'apple', quantity: '2 fruit'});
  var lime = new Ingredient({name: 'celery', quantity: '1/2 fruit'});
  var strawberries = new Ingredient({name: 'strawberry', quantity: '3 cups'});
  var berryApeeling = new IngredientCollection();
  berryApeeling.add([apple2, lime, strawberries]);

  var appleJuices = new Juice({name: 'apple juices', ingredients: appleCrisp});
  var berryJuice  = new Juice({name: 'berry juice',ingredients: berryApeeling});

  var juiceCollection = new JuiceCollection();
  juiceCollection.add([appleJuices, berryJuice]);

  var juiceListView = new JuiceListView({collection: juiceCollection, el: $('.juice-list')});
  console.log(juiceListView.render().el);
  juiceListView.render();
});
