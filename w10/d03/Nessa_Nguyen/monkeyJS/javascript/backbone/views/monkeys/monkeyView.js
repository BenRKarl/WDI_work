var BananaApp = BananaApp || { Models: {}, Collections: {}, Views: {} };

BananaApp.Views.MonkeyView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#monkey-template').html()),
  render: function() {
    var monkeyObj = this.template(this.model.attributes);
    this.$el.append(monkeyObj);
    return this;
  },
  events: {
    'submit form': 'addMonkey'
  },
  addMonkey: function(e) {
    e.preventDefault();
    var inputs = $(e.target).parent().find('input');
    var name = $(inputs[0]).val();
    var age  = $(inputs[1]).val();
    var toy  = $(inputs[2]).val();
    console.log(name);
    _.each(inputs, function(inputField) {
      //inputField.val('');
    });
    this.collection.add({name: name, age: age, toy: toy});
  }
})
