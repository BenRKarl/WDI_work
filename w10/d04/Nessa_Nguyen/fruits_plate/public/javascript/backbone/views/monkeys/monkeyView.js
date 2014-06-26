var BananaApp = BananaApp || { Models: {}, Collections: {}, Views: {} };

BananaApp.Views.MonkeyView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#monkey-template').html()),
  editTemplate: _.template($('#edit-template').html()),
  render: function() {
    var monkeyObj = this.template(this.model.attributes);
    this.$el.append(monkeyObj);
    return this;
  },
  events: {
    'click [data-action="free"]': 'releaseMonkey',
    'click [data-action="edit"]': 'showEditForm'
  },
  releaseMonkey: function() {
    this.model.destroy();
    this.remove();
  },
  showEditForm: function() {
    var that = this;
    this.$el.html( this.editTemplate( this.model.attributes ) );
    this.$el.find('form').on('submit', function(e) {
      e.preventDefault();
      var fields = that.$el.find('input');
      var newName   = $('.new-name').val();
      var newAge   = $('.new-age').val();
      var newToy   = $('.new-toy').val();
      that.model.set('name', newName)
                 .set('age', newAge)
                 .set('toy', newToy);
      that.model.save();
    })
  }
});
