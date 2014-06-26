//THIS DESIGNATES THE NAMESPACE
var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove);
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  editTemplate: _.template($('#edit-monkey-template').html()),
  template: _.template($('.monkey-template').html()),
  render: function(){
    var renderedHTML = this.template(this.model.attributes);
    this.$el.html(renderedHTML);
    return this;
  },
  events:{
    'click [data-action="release"]': 'releaseMonkey',
    'click [data-action="edit"]': 'renderEditForm',
    'mouseover':'monkeyWiggle',
    'mouseleave':'monkeyUnWiggle'
  },
  releaseMonkey: function(){
    this.model.destroy();
    return this;
  },
  renderEditForm: function(){
    var that = this;
    this.$el.html( this.editTemplate( this.model.attributes ) );
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName = nameField.val();
      nameField.val('');
      that.model.set('name', newName);
      that.model.save();
    })
    return this;
  },
  monkeyWiggle: function(){
    this.$el.css('transform', 'rotate(2deg)');
  },
  monkeyUnWiggle: function(){
    this.$el.css('transform', 'rotate(0deg)');
  }
});
