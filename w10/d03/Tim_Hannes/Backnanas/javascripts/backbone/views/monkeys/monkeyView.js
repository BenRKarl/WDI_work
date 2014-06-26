var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  //create an li
  template: _.template($('#monkey-template').html()),
  //go get the monkey template from index
  editTemplate: _.template($('#edit-monkey-template').html()),
  render: function(){
    this.$el.html( this.template( this.model.attributes ) );
    return this;
  },
  events:{
    'click [data-action="release"]' : 'releaseMonkey',
    //click on something that has a data action of release(button)
    'click [data-action="edit"]' : 'renderEditForm',
    'mouseover': 'wiggleMe'
    },
    //Now define release monkey
    releaseMonkey: function(){
      this.model.destroy();
      return this;
    },
    wiggleMe: function(){
      var deg = (Math.random() * 2);
      this.$el.css('transform', 'rotate('+deg+'deg)');
      return this;
    },
    renderEditForm: function(){
      var that = this;
      this.$el.html( this.editTemplate(this.model.attributes));
      this.$el.find('form').on('submit', function(e){
        e.preventDefault();
        var nameField = that.$el.find('input');
        var newName = nameField.val();
        that.model.set('name', newName);
      })
      return this;
    }
});
