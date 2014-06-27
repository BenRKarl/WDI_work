var GutenbergApp = GutenbergApp || { Models: {}, Collections: {}, Views: {} }

  GutenbergApp.Collections.AuthorCollections = Backbone.Collection.extend({
    model: GutenbergApp.Models.Author,
    url: '/authors'
  })
