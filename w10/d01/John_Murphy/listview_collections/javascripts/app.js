////////////////Pre Homework
// var Ingredient = Backbone.Model.extend({});

// var IngredientCollection = Backbone.Collection.extend({
//   model: Ingredient
// });

// var IngredientView = Backbone.View.extend({
//   tagName: 'li',
//   template: _.template($('#ingredient-template').html()),
//   render: function(){
//     this.$el.html(this.template({ingredient: this.model.toJSON()}));
//     return this;
//   }
// })

// var ingredients

// var strawberry



// var IngredientListView = Backbone.View.extend({
//   // tagName: 'ul',
//   initialize: function(){
//     this.listenTo(this.collection, 'add', this.render);
//     this.listenTo(this.collection, 'remove', this.render);
//   },
//   render: function(){
//     var that = this
//     this.$el.empty()
//     _.each(this.collection.models, function(ingredient){
//       var ingredientView = new IngredientView({model: ingredient});
//       that.$el.append(ingredientView.render().el);
//     });
//     return this;
//   }
// })

// var listView

// $(function(){
//   ingredients = new IngredientCollection();
//   strawberry = new Ingredient({name: 'strawberry', amount: 13});
//   ingredients.on('add', function(){console.log('something was added')});
//   ingredients.add(strawberry);
//   ingredients.on('remove', function(){console.log('something was removed')});
//   // ingredients.remove(strawberry);
//   var cabbage = new Ingredient({name: 'cabbage', amount: 1});
//   ingredients.add(cabbage);

//   listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
//   var turmeric = new Ingredient({name: 'turmeric', amount: 30});
//   listView.collection.add(turmeric);
//   listView.collection.remove(turmeric);
//   // listView.render();

// })


//////////////////////////Homework/////////////////////////





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
})

var ingredients

var strawberry

var listView


var IngredientListView = Backbone.View.extend({
   tagName: 'ul',
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    var that = this
    this.$el.empty()
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
})


var Juice = Backbone.Model.extend({
  name: name,
  ingredients: ingredients
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function(){
    var ingredientList = new IngredientListView({collection: this.model.attributes.ingredients, el: this.el})
    // lichard = this.collection.models
    var newInList = ingredientList.render().$el.html()
    this.$el.html(this.template({juice: this.model.toJSON()})).append(newInList);
    return this;
  }
})

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    var that = this
    this.$el.empty()
    _.each(this.collection.models, function(juice){
      var newJuice = new JuiceView({model: juice})
      that.$el.append(newJuice.render().el);
    });
    return this;
  }
})

$(function(){
  ingredients = new IngredientCollection();
  otherIngredients = new IngredientCollection();

  strawberry = new Ingredient({name: 'strawberry', amount: 13});
  ingredients.on('add', function(){console.log('something was added')});
  ingredients.add(strawberry);
  ingredients.on('remove', function(){console.log('something was removed')});
  // ingredients.remove(strawberry);
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);

  var lettuce = new Ingredient({name: 'lettuce', amount: 10});
  otherIngredients.add(lettuce)

  listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});
  var turmeric = new Ingredient({name: 'turmeric', amount: 30});
  listView.collection.add(turmeric);
  listView.collection.remove(turmeric);

  juicecollection = new JuiceCollection();
  myjuice = new Juice({name: 'First Juice', ingredients: ingredients});
  secondjuice = new Juice({name: 'Second Juice', ingredients: otherIngredients});
  myjuiceView = new JuiceView({model: myjuice, el: $('#juice-list')})
  juicecollection.on('add', function(){console.log('juice added')});
  juicecollection.add(myjuice);
  juicecollection.add(secondjuice);

  juicelistview = new JuiceListView({collection: juicecollection, el: $('#juice-list')});



  // listView.render();

})
