var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {}};

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove)
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($("#monkey_template").html()),
  editTemplate: _.template($("#edit_monkey_template").html()),

  render: function(){
      this.$el.html(this.template(this.model.attributes));
      return this;
  },
  events: {
    'click [data-action="release"]' : 'releaseMonkey',
    'click [data-action="edit"]' : 'renderEditForm',
    'mouseover': 'wiggle',
  },
  releaseMonkey: function(){
    this.model.destroy();
    return this;
  },
  renderEditForm: function(){
    var that = this;
    this.$el.html( this.editTemplate( this.model.attributes ));
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
       var nameField = that.$el.find('input');
      var newName = nameField.val();
      nameField.val('');
      that.model.set('name', newName)
    })

    return this;
  },
  wiggle: function(){
    var deg = Math.random();
    this.$el.css('transform', 'rotate('+deg+'deg)');
    return this;
  }
})
