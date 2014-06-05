var omdbApi = {
  search: function (title, callback) {
    this.request(title, 's', callback);
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    $.ajax({
      url: 'http://www.omdbapi.com/?i=' + parameter + '=' + query,
      success: callback
      })
  }


$(function(){

  $('movie-search-form').on('submit', function(e){
    console.log('do stuff')
  })

})
