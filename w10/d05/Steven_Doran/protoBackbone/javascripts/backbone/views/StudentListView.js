var ProtoApp = ProtoApp || { Models: {}, Views: {}, Collections: {}}

ProtoApp.Views.StudentListView = Backbone.View.extend({
   initialize: function() {
      this.listenTo(this.collection, 'all', this.render);
   },
   render: function() {
      var that = this;
      this.$el.empty();
      _.each(this.collection.models, function(studentModel) {
         var studentView = new ProtoApp.Views.StudentView({model: studentModel});
         
         that.$el.append(studentView.render().el);
      });
      return this;
   }
})