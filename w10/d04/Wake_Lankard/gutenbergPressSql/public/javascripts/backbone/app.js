var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.initialize = function(){
  var authors = GutenbergApp.Collections.AuthorCollection();
  var authorsView = GutenbergApp.Views.AuthorListView({
    collection: authors,
    el: $('.author-lounge')
  });

  authors.fetch({success: function(){
    authorListView.render()
    }
  });


};

$(function(){
  GutenbergApp.initialize();
})