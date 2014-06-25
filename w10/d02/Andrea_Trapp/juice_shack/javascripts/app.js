
///////////////////   Ingredients    ////////////////////////////


var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',  
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

var IngredientListView = Backbone.View.extend({
  // tagName: 'ul',
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

////////////////////     Juice     //////////////////////////////////

var Juice = Backbone.Model.extend({ 
 ingredients: IngredientCollection
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// JuiceView
// renders own template with a ul
// creates new IngredientListView and passe the JuiceView's ul as the el of the IngredientListView.
// calls render on the new ingredient list view.

var JuiceView = Backbone.View.extend({
  tagName: 'ul',

  initialize: function(){
    // listenTo should be used for performance reasons and to avoid memory leaks because 
    // events are being destroyed automatically    
    // this.listenTo(this.collection, 'add', this.render);
  },

  render: function(){ 
    var that = this;
    this.$el.empty();   
    debugger;

    _.each(this.model.attributes.ingredients, function(ingredients){
      var ingredientListView = new IngredientListView({
          collections: ingredients, 
          el: $('#juice')
        });
        that.$el.append(ingredientListView.render().el);
    });

   return this;  
  }
});

// JuiceListView
// renders all juice views

var JuiceListView = Backbone.View.extend({
  tagName: '#juices-list',

  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },

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



/////////////////////    ready    ///////////////////////////


$(function(){
  var ingredients = new IngredientCollection();

  ingredients.on('add', function(){console.log("ingredient was added")});
  
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.add(strawberry);

  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);

  var tumeric = new Ingredient({name: 'tumeric', amount: 30});
  ingredients.add(tumeric);

  var peaches = new Ingredient({name: 'peaches', amount: 3});
  ingredients.add(peaches);
  // listView.render();
  ////////////////////////////////

  var juices = new JuiceCollection();

  juices.on('add', function(){console.log("a juice was added")});
  // debugger;

  var juice1 = new Juice({name: "Juice1", ingredients: ingredients}); 
  juices.add(juice1);
  
  var juice2 = new Juice({name: "Juice2", ingredients: ingredients});
  juices.add(juice2);

  var juiceListView = new JuiceListView({
    collection: juices
  });
  juiceListView.render();


  console.log(juice2.attributes);

  
  console.log('done...');

})