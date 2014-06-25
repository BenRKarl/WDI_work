var Juice = Backbone.Model.extend({
  initialize: function() {
    this.set('ingredients', new IngredientCollection());
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  tagName: 'ul',
  template: _.template($('#juice-template').html()),
  render : function () {
    var that = this;
    this.$el.empty();
    var juiceName = this.template(this.model.attributes);
    var renderedView = this.$el.html(juiceName);

    var ingredientListView = new IngredientListView({
      collection: this.model.get('ingredients'),
      el: this.$el.find('.ingredient-list')
    });
    ingredientListView.render();

    return this;
  },
  events: {
    'click button[name="remove"]': 'removeJuice',
    'submit form': 'addIngredient'
  },
  addIngredient: function(e) {
    e.preventDefault();
    var inputField = this.$el.find('input');
    var newIngredient = $(inputField[0]).val();
    var newQuantity = $(inputField[1]).val();
    inputField.val('');
    this.model.get('ingredients').add({name: newIngredient, quantity: newQuantity});
    return this;
  },
  removeJuice: function() {

  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice) {
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});

