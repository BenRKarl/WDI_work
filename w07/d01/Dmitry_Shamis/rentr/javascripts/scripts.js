var omdbApi = {
  search: function(title, callback) {
    this.request(title, 's', callback);
    return this;
  },

  lookup: function(imdbID, callback) {
    this.request(imdbID, 'i', callback);
    return this;
  },

  request: function(query, parameter, callback) {
    var callback = callback || function(data){console.log(data)};
    $.ajax({
      url: 'http://www.omdbapi.com/?' + parameter + '=' + query,
      dataType: 'json',
      success: callback
    })
    return this;
  }
}

var inputManager = {
  takeTextInput: function(cssSelector) {
    var userInput = $(cssSelector);
    var text = userInput.val();
    userInput.val("");
    return text;
  }
}

function updatePoster(movieData) {
  $('.poster-image').attr('src', movieData.Poster);
}

function displaySearchResults(data) {
  var movieArray = data.Search;
  $('.search-results').html('');
  for (var i = 0; i < movieArray.length; i++) {
    var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

    movieLi.on('click', function(e) {
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster)
    })

    $('.search-results').append(movieLi);
  };
}

$(function () {

  $('.movie-search').on('submit', function(e) {
    e.preventDefault();
    var query = inputManager.takeTextInput('.search-term');
    omdbApi.search(query, displaySearchResults);
  })

})
