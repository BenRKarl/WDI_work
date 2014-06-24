var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON()}));
    return this;
  }

});

var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection,'add',this.render);
    this.listenTo(this.collection,'remove',this.render);
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

var Juice = Backbone.Model.extend({
  initialize: function(){
    this.set('ingredients', new IngredientCollection());
  },
  defaults: {
    name: 'nameless juice'
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },

  tagName: 'ul',
  template: _.template($("#juice-template").html()),
  render: function(){
  
    var that= this;
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );

    var ingredientListView = new IngredientListView({
      collection: this.model.get('ingredients'),
      el: this.$el.find('.juice-ingredients')
    });
    ingredientListView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
    
      var newIngredient = that.$el.find('.ingredient-input').val();
      var newAmount = that.$el.find('.amount-input').val();
      that.model.get('ingredients').add({name: newIngredient, amount: newAmount});
      that.$el.find('.ingredient-input').val('');
      that.$el.find('.amount-input').val('');
    })

    return this;
  },
  events: {
    'click button[name="dump-juice"]': 'removeJuice',

  },
  removeJuice: function(){
    this.model.destroy();
    this.remove();
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    ;
    this.listenTo(this.collection, 'all', this.render);
  },

  render: function(){

    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({ model:juice });
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});
var juiceCollection;
var juiceListView;

$(function(){
  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({
    collection: juiceCollection,
    el: $('#juice-zone')
  });

  $('.juice-form').submit(function(e){
    e.preventDefault();

    var newJuice = $('.juice-input').val();
    juiceCollection.add({name: newJuice});
    $('.juice-input').val('');

  })





})