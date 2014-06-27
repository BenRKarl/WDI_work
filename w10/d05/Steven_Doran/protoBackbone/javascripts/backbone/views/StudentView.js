var ProtoApp = ProtoApp || { Models: {}, Views: {}, Collections: {}}

ProtoApp.Views.StudentView = Backbone.View.extend({
   initialize: function() {
      this.listenTo(this.model, 'all', this.render);
   },
   template: _.template($('.student-template').html()),
   render: function() {
      var html = (this.template(this.model.attributes));
      this.$el.html(html);
      return this;
   },
   events: {
      'click': 'getColor'
   },
   getColor: function() {
      this.$el.css('background-color', randomColor);
   }
});

var randomColor = function() {
   var letters = '0123456789ABCDEF'.split('');
   var color = '#';
   for (var i = 0; i < 6; i++ ) {
      color += letters[Math.floor(Math.random() * 16)];
   }
   return color;
}