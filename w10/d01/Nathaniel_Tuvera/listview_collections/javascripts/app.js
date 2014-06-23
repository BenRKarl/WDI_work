// *** Model ***
var Ingredient = Backbone.Model.extend({});

// *** View ***
var IngredientView = Backbone.View.extend({     // passing in a new model, retrieve template, but not referecing and existing DOM and then appending mark up to it
  tagName: 'li',                                // creating HTML markup  !!! manages creations of a dom view for a single elemtn
  // template: _.template('<li>this is a template <%- %></li>');
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

// ** Juices MVC **

// ** Model **
var JuiceModel = Backbone.Model.extend({});

// ** View **

var JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($)// need to put something here

});

var JuiceListView = Backbone.View.extend({});

// ** Collection **

var JuiceCollection = Backbone.Collection.extend({}I);


// *** Collection ***
var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});


$(function(){
  var ingredients = new IngredientCollection();
  var strawberry  = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.on('add', function(){console.log('something was added')});
  ingredients.add(strawberry);

  ingredients.on('remove', function(){console.log('something was removed')});
  // ingredients.remove(strawberry);
  var cabbage = new Ingredient({name: 'cabbage', amount: 'one'});
  ingredients.add(cabbage);

  var listView = new IngredientListView({collection: ingredients, el : $('#ingredient-list')});
  listView.render();
  var turmeric = new Ingredient({name: 'turmeric', amount: 30});
  listView.collection.add(turmeric);
  ingredients.remove(cabbage);
})
