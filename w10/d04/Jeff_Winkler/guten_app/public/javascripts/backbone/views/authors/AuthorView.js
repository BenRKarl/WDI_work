
var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };


GutenbergApp.Views.AuthorView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#author_template').html()),
  render: function() {
    this.$el.html(this.template(this.model.attributes));
    return this;
  },
  events: {
    'click [data-action="get_books"]': 'getBooks'
  },
  getBooks: function () {
    console.log(this.model.get('id'));
  }
});
