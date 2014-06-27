var GutenbergApp = GutenbergApp || { Models: {}, Collections: {}, Views: {} }

    GutenbergApp.Collections.BookCollection = Backbone.Collection.extend({
      model: GutenbergApp.Models.Book
    });
