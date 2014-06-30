var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} }

GutenbergApp.Views.BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function() {
    var html = this.template(this.model.toJSON());
    console.log(this.model.attributes);
    this.$el.append(html);
    return this;
  }
});
