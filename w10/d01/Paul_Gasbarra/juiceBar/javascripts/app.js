
//**** JUICE Models  ****
var Juice = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults: {
    name: 'juice'
  }
});

var Ingredient = Backbone.Model.extend({
  defaults: {
    ingredientName: 'ingredient',
    ingredientAmount:  'qty',
  }
})

//**** Collections ****

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
})

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
})



//**** Ingredient Views ****

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($("#ingredient-template").html()),
  render: function(){
    this.$el.empty();
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html ( renderedHTML );
    return this;
  }
})

var IngredientListView = Backbone.View.extend({
  intitialize: function(){
  this.listenTo(this.collection, 'all', this.render);
},
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    })
    return this;
  }
})

// ***** Juice Views *****
var JuiceView = Backbone.View.extend({
 initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($("#juice-template").html()),//why the template??
  render: function(){

    var that = this;

    var renderedHTML = this.template( this.model.attributes );
      this.$el.html( renderedHTML )//Q: What goes here? A: What you want to show up.

    var ingredientListView = new IngredientListView({
       collection: this.model.get('ingredients'),
       el: this.$el.find('.ingredients-in-juice')
    });
    ingredientListView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();

      var nameField = that.$el.find('#ingredientName');
      var amountField = that.$el.find('#ingredientAmount');
      var newIngredient = nameField.val();
      var newAmount = amountField.val();
      nameField.val('');
      amountField.val('');
      that.model.get('ingredients').add({ingredientName: newIngredient, ingredientAmount: newAmount});
      //that.model.get('ingredients').add({});
      debugger
    })

    return this;
  },

  events: {
    'click button[name="trash-button"]': 'removeJuice',
  },
  removeJuice: function(){
    this.model.destroy();
    this.remove();
  },

 });

var JuiceListView = Backbone.View.extend({
 initialize: function(){
  this.listenTo(this.collection, 'all', this.render);
 },
 tagName: 'ul',
 render: function(){
  var that = this;
  this.$el.empty();
  _.each(this.collection.models, function(juiceModel){
    var juiceView = new JuiceView({model: juiceModel});
    that.$el.append( juiceView.render().el );
  });
  return this
 }
});


//*********ACTION SCRIPT**********

$(function(){

  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('.juice-menu')
  });

  $('form.new-juice').on('submit', function(e){
    console.log("Something happened.")
    e.preventDefault();
    var juiceNameField = $('.juice-name');
    var juiceName = juiceNameField.val();
    juiceNameField.val('');
    juiceCollection.add({name: juiceName});
  })


})




