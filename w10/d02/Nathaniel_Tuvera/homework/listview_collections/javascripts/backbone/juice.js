
// ***** Juice MVC *****

// ** Model **
var Juice = Backbone.Model.extend({
  initialize: function(){
  this.set('ingredient', new IngredientCollection());
  }
});

// ** Collection **

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// ** View **

var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#juice-template').html()),
  render: function(){
    var that = this;
    var renderedhtml = this.template({juice: this.model.toJSON()});
    this.$el.html(renderedhtml);

    var ingredientListView = new IngredientListView({
      collection: this.model.get('ingredient'),
      el: this.$el.find('.juice-ingredients')
    });
    ingredientListView.render();

// form for ingredients from template
    this.$el.find('.ingredients-list').on('submit', function(e){
      e.preventDefault();
      var ingredientName    = that.$el.find('.ingredient-name');
      var newIngredientName = ingredientName.val();
      ingredientName.val('');

      var ingredientAmount    = that.$el.find('.ingredient-amount');
      var newIngredientAmount = ingredientAmount.val();
      ingredientAmount.val('');

      that.model.get('ingredient').add({
        name: newIngredientName,
        amount: newIngredientAmount});
      ingredientListView.render();
    })
        return this;
  },
  events: {
    "click button[name='remove-juice']": 'removeJuice'
    // "click button[name='remove-juice']": remove
  },
  removeJuice: function(){
    this.model.destroy();
    this.remove();
  }
});

var JuiceListView = Backbone.View.extend({
  intialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  // tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.html();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      // var ingredientView = new IngredientView({model: Ingredient});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});
