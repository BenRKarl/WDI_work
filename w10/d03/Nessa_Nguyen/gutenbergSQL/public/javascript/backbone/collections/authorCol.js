var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Collections.AuthorCol = Backbone.Collection.extend({
  //model: GutenbergApp.Models.Author,
  url: '/authors'
});
