
var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };


GutenbergApp.initialize = function() {
  authors = new GutenbergApp.Collections.AuthorCollection();
  authorListView = new GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('.author_list')
  });
  authors.fetch({success: function() {authorListView.render();}});
};

$(function() {
  GutenbergApp.initialize();
});
