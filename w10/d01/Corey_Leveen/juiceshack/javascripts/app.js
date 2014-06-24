// JuiceModel - an ingredients collection is assigned
// to its 'ingredients' attribute

// JuiceCollection


var Ingredient = Backbone.Model.extend({

});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
})

var Juice = Backbone.Model.extend({
  model: IngredientCollection
})

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
})

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON() }));
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  tagName: 'ul',
  // intialize: function(){
  //   this.listenTo(this.collection, 'add', this.render);
  // },
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

// JuiceView - *renders own template with a ul
// *creates new IngredientList and passes
// *calls render on the new ingredient list view.

// JuiceListView - renders all juice views

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#juice-template').html()),
  render: function(){
    this.$el.html(this.template({ juice: this.model.toJSON() }));
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  tagName: 'ul',
  // initialize: function(){
  //   this.listenTo(this.collection, 'add', this.render);
  // },
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
var myIngredients = new IngredientCollection();
var pineapple = new Ingredient({name: 'pineapple', amount: 1});
var banana = new Ingredient({name: 'banana', amount: 2});
var guavaJelly = new Ingredient({name: 'guava jelly', amount: 1});
myIngredients.add(pineapple);
myIngredients.add(banana);
myIngredients.add(guavaJelly);

var ingredientsListview = new IngredientListView({collection: myIngredients, el: $('#ingredient-list')});

var juices = new JuiceCollection();
var jungleJuice = new Juice({name: 'JungleJuice', ingredients: myIngredients});
juices.add(jungleJuice);
var juiceListview = new JuiceListView({collection: juices, el: $('#juice-list')});
ingredientsListview.render();
juiceListview.render();
})
