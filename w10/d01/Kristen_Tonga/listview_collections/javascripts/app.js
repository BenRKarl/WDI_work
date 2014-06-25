var Ingredient = Backbone.Model.extend({
  defaults: {
    name: 'n/a',
    amount: 0
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var Juice = Backbone.Model.extend({
  defaults: {
    title: 'n/a',
    ingredients: []
  }
});

// var JuiceCollection = Backbone.Collection.extend({
//   model: Juice
// });

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('.ingredient-template').html()),
  render: function(){
    // this.$el.html(this.template()); // change template to <%name%> etc.
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});


var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({ model: ingredient });
      that.$el.append(ingredientView.render().el)
    });
    return this;
  }
});

var JuiceView = Backbone.View.extend({
  el: ".juice",
  initialize: function(){
    this.render();
  },
  render: function(){
    var template = _.template($('.juice-template').html(), {title: this.title, ingredients: this.collection.models});
    this.$el.html(template);
  }
});

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  var blueberry = new Ingredient({name: 'blueberry', amount: 20});
  var beet = new Ingredient({name: 'beet', amount: 2});
  // var rad = new Juice({name: 'Rad Red Rover', ingredients: [strawberry, blueberry, beet]})

  ingredients.on('remove', function(){
    $('.removal-alert').animate({
      opacity: 1
    }, 1000).animate({opacity: 0}, 2000)
  })

  ingredients.add([strawberry, cabbage, blueberry]);
  ingredients.remove(strawberry);

  var listView = new IngredientListView({collection: ingredients, el: $('.ingredients')})
  listView.render();

  var radJuiceView = new JuiceView({
    title: 'Rad Red Rover',
    collection: new IngredientCollection([strawberry, blueberry, beet])
  });

  var otherJuiceView = new JuiceView({
    title: 'Otherworldly',
    collection: new IngredientCollection([cabbage,beet])
  })
})
