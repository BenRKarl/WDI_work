var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend ({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});
//Collection View
var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },//listenTo takes thing your listening to, the listening event, and the callback
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

// ** Model **
var Juice = Backbone.Model.extend({
  defaults:{
    title: '',
    ingredients: ''
  }
});

// ** Collection **
var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// *** VIEWS ***
    // ** View for one juice **
    var JuiceView = Backbone.View.extend({
      tagName: 'li',
      template: _.template($('#juice-list-template').html()),
      render: function(){
        this.$el.html( this.template({title: this.model.toJSON()}));
        return this;
      }
    });

    // ** ListView All Juices **
    var JuiceListView = Backbone.View.extend({
      initialize: function(){
        this.listenTo(this.collection, 'add', this.renderJuice)
      },
      renderJuice: function(model){
        var that = this;
        this.$el.empty();
        _.each(this.collection.models, function(title, ingredients){
          var juicesview = new JuiceView({model: juice});
          that.$el.append(juiceView.render().el);
        })
        return this;
        // model.view = new JuiceView({model: model})
        // this.$el.prepend(model.view.render().el);
      }
    })




$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13})
  // ingredients.on('add', function(){console.log('something was added.')})
  ingredients.add(strawberry);
  // ingredients.on('remove', function(){console.log('something was removed.')})
  // ingredients.remove(strawberry);

  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);

  var listView = new IngredientListView({collection: ingredients, el: $('#ingredient-list')});

  var turmeric = new Ingredient({name: 'turmeric', amount: 30});
  ingredients.add(turmeric);
  // ingredients.remove(turmeric);
})

$(function(){
  var juices = new JuiceCollection();
  var blueberryYumYum = new Juice({title: 'BB Yum Yum', ingredients:'blueberries, spirutine'});
  juices.add(blueberryYumYum);
})
