

var omdbApi = {
  search: function(title, callback){
    this.request(title, 's', callback);
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    $.ajax({
      url: 'http://omdbapi.com/?' + parameter + '=' + query,
      dataType: 'json',
      success: callback
    })
    return this;
  }
}


$(function(){
  $('#form').submit(function(e){
    e.preventDefault();

    omdbApi.search($('#input').val(), function(data){
      var movieArray = data.Search;
      for (var i = 0; i < movieArray.length; i++) {
        var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

        movieLi.on('click', function(e){
          var imdbID = $(e.target).data('imdbID');
          omdbApi.lookup(imdbID, function(data){
            $('.poster-image').attr('src', data.Poster);
          })
        })
        $('.search-results').append(movieLi);
      };
    })
  })
})

