
var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'destroy', this.remove);
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  editTemplate: _.template($('#edit_monkey_template').html()),
  template: _.template($('#monkey_template').html()),
  render: function() {
    this.$el.html(this.template(this.model.attributes));
    this.$el.css("background-color", "#dddddd");
    this.$el.css("border-radius", "10px");
    this.$el.css("margin", "5px");
    this.$el.css("width", "400px");
    return this;
  },
  events: {
    'click [data-action="release"]': 'releaseMonkey',
    'click [data-action="edit"]': 'renderEditForm',
    'mouseover': 'changeBackground'
  },
  releaseMonkey: function() {
    this.model.destroy();
    return this;
  },
  renderEditForm: function() {
    var that = this;
    this.$el.html(this.editTemplate(this.model.attributes));
    this.$el.find('form').on('submit', function (e) {
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName = nameField.val();
      that.model.set('name', newName);
      that.model.save();
    });
    return this;
  },
  changeBackground: function() {
    var deg = (Math.random() * 4)-2;
    this.$el.css("transform", "rotate(" + deg + "deg)");
  }
});



