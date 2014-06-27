var GutenbergApp = GutenbergApp || { Models: {}, Collections: {}, Views: {} }

    GutenbergApp.Collections.BookCollections = Backbone.Collection.extend({
      model: GutenbergApp.Models.Book
    })
