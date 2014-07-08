var DivApp = DivApp || { Models: {}, Views: {}, Collections: {} };

DivApp.Views.AuthorView = Backbone.View.extend({
  _.each(this.collection.models, function(protoStudent){
      collection: this.model.get('protoStudents'),
      el: this.$el.find('#proto-div').css({background-color: blue})
    });
    return this;
  },
    