var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} }

GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function() {
    var html = this.template(this.model.attributes);
    this.$el.append(html);
    return this;
  }
});
