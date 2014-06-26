var GutenbergApp = GutenbergApp || {Models: {}, Views: {}, Collections: {}};

GutenbuergApp.Collections.AuthorCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Author,
  url: '/authors'
})
