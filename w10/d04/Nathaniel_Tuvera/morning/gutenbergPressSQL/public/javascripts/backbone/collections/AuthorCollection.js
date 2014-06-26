var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Collections.AuthorsCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Author,
  url: '/authors'
});
