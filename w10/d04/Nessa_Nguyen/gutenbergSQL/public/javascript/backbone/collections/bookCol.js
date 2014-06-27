var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Collections.BookCol = Backbone.Collection.extend({
  model: GutenbergApp.Models.Book,
});
