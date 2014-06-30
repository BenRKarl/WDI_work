var Bananapp = Bananapp || {Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template( $('.monkey-template').html()),
  render: function(){
    var that = this;
    var renderedHTML = this.template( this.model.atrributes );
    this.$el.html( renderedHTML );

    var nameListView = new NameListView({
      collection: this.model.get('names'),
      el: this.$el.find('.names')
    })
    namelistView.render();
    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var nameField = that.$el.find('input');
      var newName = nameField.val();
      nameField.val('');
      that.model.get('names').add({name: newName})
    })
    return this;
  },
    events: {
      'click button[name="free"]:' 'removeName'
    },
    removeName: function(){
      this.model.destroy();
      return this;
    }
});