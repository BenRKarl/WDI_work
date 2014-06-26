var Bananapp = Bananapp || {  Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'destroy', this.remove)
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#monkey-template').html()),
  editTemplate: _.template($('#edit-monkey-template').html()),
  render: function(){
    this.$el.html(this.template( this.model.attributes ));
    return this;
  },
  events:{
    'click [data-action="release"]' : 'releaseMonkey',
    'click [data-action="edit"]' : 'renderEditForm',
    'mouseover' : 'wiggleMonkey'
  },
  releaseMonkey: function(){
    this.model.destroy();
    // this.remove() not used here because it's already done on ln.5
    return this;
  },
  renderEditForm: function(){
    var that = this;
    this.$el.html( this.editTemplate( this.model.attributes ) );
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName   = nameField.val();
      nameField.val('');
      that.model.set('name', newName)
      return this;
    })
  },
  wiggleMonkey: function(){
    var deg = (Math.random() *2) -1;
    this.$el.css('transform', 'rotate('+deg+'deg');
    this.$el.css('box-shadow', '10px 5px 5px 5px #888888')
    return this;
  }
});
