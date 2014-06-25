var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.Views.MonkeyView = Backbone.View.extend({
   initialize: function(){
      this.listenTo(this.model, 'destroy', this.remove);
      this.listenTo(this.model, 'all', this.render);
   },
   tagName: 'li',
   template: _.template($('.monkey-template').html()),
   editTemplate: _.template($('.edit-template').html()),
   render: function(){
      var that = this;
      var html = (this.template(this.model.attributes));
      this.$el.html(html);
      return this;
   },
   events: {
      'click [data-action="release"]': 'liberateMonkey',
      'click [data-action="edit"]': 'renderEditForm',
      'mouseover': 'wiggle'
   },
   liberateMonkey: function(){
      this.model.destroy();
      return this;
   },
   renderEditForm: function(){
      var that = this;
      this.$el.html(this.editTemplate(this.model.attributes));
      this.$el.find('form').on('submit', function(e){
         e.preventDefault();
         var nameField = that.$el.find('input');
         var newName = nameField.val();
         that.model.set('name', newName);      
      })
      return this;
   },
   wiggle: function() {
      var deg = (Math.random() * 2) - 1;
      this.$el.css('transform', 'rotate('+deg+'deg)');
      return this;
   }
   
});