var omdbApi = {
  search: function(title, callback){
    this.request(title, 's', callback);
    return this;
  },

  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
    return this;
  },

  url: function(query, parameter){
    return 'http://www.omdbapi.com/?' + parameter + '=' + query;
  },

  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    var url = this.url(query, parameter)
    $.ajax({
      url: url,
      dataType: 'json',
      success: callback
    })
    return this;
  }
}

var inputManager = {//input manager takes the query, then clears the search box
  getTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val(''); //sets userInput value to empty string
    return text;
  }
}

function displaySearchResults(data){
    var movieArray = data.Search;
    for (var i = 0; i < movieArray.length; i++){//for each of the search results
      var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

      movieLi.on('click', function(e){//get the thing clicked and get its ID
        var imdbID = $(e.target).data('imdbID');//use the lookup function
        omdbApi.lookup(imdbID, function(movieData){//get the poster via the movies lookup ID
          $('.poster-image').attr('src', movieData.Poster);//on click display movie
        })
      })

      $('.search-results').append(movieLi);
    };
}
//this takes the info from our form, and submits a request

$(function(){

  $('.movies .search').on('submit', function(e){
    e.preventDefault(); //prevents form submitting again
    var query = inputManager.getTextInput('.movies .search input[name="movie-search"]')
    omdbApi.search(query, displaySearchResults);
  })

})

// omdbApi.lookup('.movies .search input[name="movie-search"]', function(data){
//  $('.title').html(data.Title);
// })
