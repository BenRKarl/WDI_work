var omdbApi = {
  search: function (title, callback) {
    this.request(title, 's', callback);
  },
  lookup: function (imdbID, callback) {
    this.request(imdbID, 'i', callback);
  },
  url: function (query, parameter) {
    return 'http://www.omdbapi.com/?' + parameter + '=' + query;
  },
  request: function (query, parameter, callback) {
    var callback = callback || function (data){ console.log (data)};
    var url = this.url(query, parameter);
    $.ajax({
      url: url,
      dataType: 'json',
      success: callback
    });
    return this;
  }
}


var inputManager ={
  takeTextInput: function(movieSearchCssSelector){
    var userInput = $(movieSearchCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
}

function updatePoster(movieData){
  $('.poster-image').attr('src', movieData.Poster);
}

function displaySearchResults(data){
  var movieArray = data.Search;
  for (var i = 0; i < movieArray.length; i++) {
    var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

    movieLi.on('click', function(e){
    var imdbID =  $(e.target).data('imdbID');
        omdbApi.lookup(imdbID, updatePoster)
    })

    $('.search-results').append(movieLi);
  };
}


$(function(){

  $('.movies .search').on('submit', function(e){
    e.preventDefault();
    //var userInput = $(this).find('input[name="movie-search"]');
    var query = inputManager.takeTextInput('.movies .search input[name="movie-search"]')
    omdbApi.search(query, displaySearchResults);

      })
    });



// var happyGilmoreID = "tt0116482";
// omdbApi.lookup(happyGilmoreID, function(data){
//   $('.header-title').html(data.Title);
// })
