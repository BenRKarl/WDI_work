//Ingredient Model
var Ingredient = Backbone.Model.extend({});

//Ingredient Collection
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

//Ingredient Model View
var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON() }));
    return this;
  }
});

//Ingredient Collection View
var IngredientListView = Backbone.View.extend({
  template: _.template('Juice Ingredients: '),
  render: function(){
    var that = this;
    this.$el.append(this.template());
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});

//JUICE MODEL CODE BELOW
//Juice Model constructor function
var JuiceModel = Backbone.Model.extend({});

//Juice Model collection function
var JuiceCollection = Backbone.Collection.extend({
  model: JuiceModel
});

//Juice Model view
var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  className: 'juice-view-list',
  id: 'ingredient-list',
  render: function(){
    //append the <ul> .el of this model view to the body
    $('body').append(this.$el);
    //Create new collection view with the collection attribute of the juiceMenu model view and an el with id 'ingredient-list'
    var menu = new IngredientListView({ collection: this.model.attributes.ingredients, el: $('#ingredient-list') });
    //Call render on menu, which is a collection view
    menu.render();
  }
});

//Juice Collection View
var JuiceListView = Backbone.View.extend({
  render: function(){
    var that = this;
    _.each(this.collection.models, function(juiceModel){
      var juiceMenu = new JuiceView({model: juiceModel});
      juiceMenu.render();
    });
  }
});

//Global Variables
//Create three ingredient models
var chocolate     = new Ingredient({name: 'chocolate', amount: 1});
var vanilla       = new Ingredient({name: 'vanilla', amount: 2});
var strawberry    = new Ingredient({name: 'strawberry', amount: 3});
var lettuce       = new Ingredient({name: 'lettuce', amount: 5});
var kale          = new Ingredient({name: 'kale', amount: 2});
var lemon         = new Ingredient({name: 'lemon', amount: 4});
var blackberries  = new Ingredient({name: 'blackberries', amount: 7});
var cheesecake    = new Ingredient({name: 'cheesecake', amount: 2});

//Create collection models
var neopolitan        = new IngredientCollection();
var lemonKale         = new IngredientCollection();
var berryCheesecake   = new IngredientCollection();

//Add ingredients to neopolitan collection
neopolitan.add(chocolate);
neopolitan.add(vanilla);
neopolitan.add(strawberry);

//Add ingredients to lemonKale collection
lemonKale.add(lettuce);
lemonKale.add(kale);
lemonKale.add(lemon);

//Add ingredients to berryCheesecake collection
berryCheesecake.add(blackberries);
berryCheesecake.add(cheesecake);

//Create juice models for the three juices
var neoJuice              = new JuiceModel();
var lemonKaleJuice        = new JuiceModel();
var berryCheesecakeJuice  = new JuiceModel();

//Assign an attribute called ingredients to the new Juice Models and set that equal to their respective ingredient collections
neoJuice.set('ingredients', neopolitan);
lemonKaleJuice.set('ingredients', lemonKale);
berryCheesecakeJuice.set('ingredients', berryCheesecake);

//Create a new model view for the newJuice model to render on the page (see onload function)
var neoJuiceMenu = new JuiceView({model: neoJuice})

//Create a new Juice Collection to store the three juices on the menu
var allJuiceMenus = new JuiceCollection();
allJuiceMenus.add(neoJuice);
allJuiceMenus.add(lemonKaleJuice);
allJuiceMenus.add(berryCheesecakeJuice);

var mainMenu = new JuiceListView({collection: allJuiceMenus});

//On LOAD
$(function(){

  neoJuiceMenu.render();
  mainMenu.render();

  // var ingredients = new IngredientCollection();

  // strawberry = new Ingredient({name: "strawberry", amount: 13});
  // cabbage = new Ingredient({name: 'cabbage', amount: 1});
  // tumeric = new Ingredient({name: 'tumeric', amount: 30});

  // ingredients.on('add', function(){ console.log('something was added!') });
  // ingredients.on('remove', function(){ console.log('something was removed :(') });

  // ingredients.add(strawberry);
  // ingredients.add(cabbage);
  // ingredients.add(tumeric);

  // listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list') });

});
