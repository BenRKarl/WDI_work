var ZooApp = ZooApp || { Models: {}, Collections: {}, Views: {} };

ZooApp.Views.MonkeyView = Backbone.View.extend({
   initialize: function(){
    this.listenTo(this.model, 'all', this.render)
    this.listenTo(this.model, 'destroy', this.remove);
  },
  tagname: 'li',
  template: _.template($('#monkey-template').html()),
  editTemplate: _.template($("#edit-monkey-template").html()),
  render: function(){
    var html = this.template(this.model.attributes);
    this.$el.html(html);
    return this;
  },
  events: {
    'click [name= free-button]': 'removeM',
    'click [name= rename-button]': 'renderEditForm'
  },
  removeM: function(){
    this.model.destroy();
    this.remove()
  },
  renderEditForm: function(){
    var that = this;
    this.$el.html( this.editTemplate(this.model.attributes));
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName = nameField.val();
      nameField.val('')
      that.model.set('name', newName);
      that.model.save();
    })
   
  }
});