// *** Model *** create a model with backbone abilities and set it equal to variable Ingredient
var Ingredient = Backbone.Model.extend({});

// *** Collection *** create a collectinon with backbone abilities and set it equal to variablle IngredientCollection
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient                                         // set what the collection is made of
});

// *** View *** create the object to be visible on the DOM
var IngredientView = Backbone.View.extend({     // passing in a new model, retrieve template, but not referecing and existing DOM and then appending mark up to it
  tagName: 'li',                                // creating HTML markup  !!! manages creations of a dom view for a single elemtn
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

var IngredientListView = Backbone.View.extend({   // pass to a jquery selected element, creates pathway that starts where we can append
  initialize: function(){                        //  new elements !!! manages the collection of all created Elements from IngredientView
    this.listenTo(this.collection, 'add', this.render);       // to the DOM
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
})


// ***** Juice MVC *****

// ** Model **
var Juice = Backbone.Model.extend({
  ingredients: IngredientCollection
});

// ** Collection **

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// ** View **

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function(){
    console.log(this);
    // var IngredientList = new Ingredient({model: this.model.attributes.name ,el: $('#juice-ingredients')});
    this.$el.html(this.template({ juice: this.model.attributes.name, ingredients: IngredientView}));
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  intialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      var ingredientView = new IngredientView({model: Ingredient});
      that.$el.append(juiceView.render().el);
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});






$(function(){
  ingredients = new IngredientCollection();
  strawberry  = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.on('add', function(){console.log('something was added')});
  ingredients.add(strawberry);
  ingredients.on('remove', function(){console.log('something was removed')});
  cabbage = new Ingredient({name: 'cabbage', amount: 'one'});
  ingredients.add(cabbage);

  listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
  turmeric = new Ingredient({name: 'turmeric', amount: 30});
  ingredients.add(turmeric);
  ingredients.remove(cabbage);


  juices    = new JuiceCollection();
  JavaJuice = new Juice({name: 'Java Juice', ingredients: ''});
  RubyRed   = new Juice({name: 'Ruby Red', ingredients: ''})
  juices.on('add', function(){console.log('juice added to collection')});
  juices.add(JavaJuice);
  pineapple = new Ingredient({name: 'pineapple', amount: 1});
  starfruit = new Ingredient({name: 'starfruit', amount: 2});
  wheatgrass= new Ingredient({name: 'wheatgrass', amount: 10});
  JavaIngredients = new IngredientCollection();
  JavaIngredients.add(pineapple);
  JavaIngredients.add(starfruit);
  JavaIngredients.add(wheatgrass);
  JavaJuice.set('ingredients', JavaIngredients);

  juiceListView = new JuiceListView({collection: juices, el: $('#juice-list')});

})
