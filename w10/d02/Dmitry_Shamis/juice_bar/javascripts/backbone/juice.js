var Juice = Backbone.Model.extend({
  initialize: function() {
    this.set('ingredients', new IngredientCollection());
  },
  defaults: {
    name: 'Water',
    ingredients: []
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
})

var JuiceView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render: function() {
    var that = this;

    var renderedHTML = this.template({juice: this.model.toJSON()});
    this.$el.html(renderedHTML);

    var ingredientListView = new IngredientListView({
      collection: this.model.get('ingredients'),
      el: this.$el.find('.juice-ingredients')
    });
    ingredientListView.render()

    this.$el.find('.ingredient-form').on('submit', function(e) {
      e.preventDefault();
      var ingredientField = that.$el.find('.name');
      var ingredientName = ingredientField.val();
      var amountField = that.$el.find('.amount');
      var amountCount = amountField.val();
      ingredientField.val('');
      amountField.val('');
      that.model.get('ingredients').add({name: ingredientName, amount: amountCount})
    })
    return this;
  },
  events: {
    'click button[name="toss-button"]': 'removeJuice'
  },
  removeJuice: function() {
    this.model.destroy();
    this.remove();
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render)
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice) {
      var juiceView = new JuiceView({model: juice})
      that.$el.append(juiceView.render().el)
    });
    return this;
  }
})
