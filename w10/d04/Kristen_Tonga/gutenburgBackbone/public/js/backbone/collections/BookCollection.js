var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}};

GutenbuergApp.Collections.BookCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Book,
});
