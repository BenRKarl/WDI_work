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
    this.$el.html();
    var renderedHTML = (this.template({ingredient: this.model.toJSON()}));
    this.$el.html(renderedHTML)
    return this;
  }
});

var IngredientListView = Backbone.View.extend({   // pass to a jquery selected element, creates pathway that starts where we can append
  initialize: function(){                        //  new elements !!! manages the collection of all created Elements from IngredientView
    this.listenTo(this.collection, 'all', this.render);       // to the DOM
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
