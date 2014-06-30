var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };


GutenbergApp.Views.BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book_template').html()),
  render: function() {
    this.$el.html(this.template(this.model.attributes));
    return this;
  }
});
