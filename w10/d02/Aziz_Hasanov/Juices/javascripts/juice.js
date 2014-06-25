var Juice = Backbone.Model.extend({
  initialize: function() {
    this.set("ingredients", new IngredientCollection());
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, "all", this.render);
  },
  tagName: "li",
  template: _.template($("#juice-template").html()),
  render: function() {
    var that = this;
    var renderedHTML = this.template(this.model.attributes);
    this.$el.html(renderedHTML);

    var ingredient = new IngredientListView({
      collection: this.model.get("ingredients"), // ????????????
      el: this.$el.find("#ingredient-list") // ????????????
    });
    ingredient.render();

    this.$el.find("form").on("submit", function(e) {
      e.preventDefault();
      var inputIngredient = that.$el.find("input");
      var newIngredient = inputIngredient.val();
      inputIngredient.val("");
      that.model.get("ingredients").add({name: newIngredient});
    });
    return this;
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, "all", this.render);
  },
  tagName: "ul",
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juiceModel) {
      var juiceView = new JuiceView({model: juiceModel});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});








