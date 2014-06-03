

var omdbApi = {
  search: function(title, callback){
    // callback = callback || function(data){console.log(data)};
    // $.ajax({
    //   url: 'http://www.omdbapi.com/?s=' + title,
    //  success: callback
    //   success: function(data){
       this.request(title, 's', callback);
       return this;           //only adds future possible method chaining
  },
  lookup: function(imdbID, callback){
    // $.ajax({
    //   url: 'http://www.comdbapi.com/?i=' + imdbID,
    //   success: function(data){
    //     console.log(data)
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
      // url: 'http://www.omdbapi.com/?' + parameter + '=' + query,      moved to variable to make code more readable
      success: callback,
      dataType: 'json'
    })
    return this;
  }
}

// omdbApi.search('star wars', function(data){console.log(data)})
// omdbApi.search('star wars')

// my idea for taking input from text field and return to console, needs to be in onLoad
// function getSearchWord(){
//   var input = document.getElementById('movie-search-words').value;
//   return input;
// }

// class answer
// as soon as submit or hit enter an event = e is created

var inputManager = {                                  //form reset afer submission code
  takeTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text      = userInput.val();
    userInput.val('');
    return text;
  }
}

function updatePoster(movieData){
  $('.poster-image').attr('src', movieData.Poster);
}
function displaySearchResults(data, textCssSelector){
  var movieArray = data.Search;
    for (var i = 0; i < movieArray.length; i++) {
      var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

      movieLi.on('click', function(e){
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster)
    })

      $('.search-results').append(movieLi);
    };
}



// $(function(){             //jquery onLoad
//   $('#movie-search-form').on('submit', function(e){
//     e.preventDefault();
//     var query = $('#movie-search-words').val();
//     omdbApi.search(query);
//   })
// })
$(function(){   //jquery onLoad

  $('.movies .search').on('submit', function(e){
    e.preventDefault();
    // var userInput = $(this).find('input[name="movie-search"]');
    // var userInput = $('.movies .search input[name="movie-search"]');
    var query     = inputManager.takeTextInput('.movies .search input[name="movie-search"]')
      omdbApi.search(query, displaySearchResults);

  })

})


// var forestGumpID = 'tt1254864'
//next lines change the title to 'Happy Gilmore'
// omdbApi.lookup('tt0116483', function(data){
//   $('.header-title').html(data.Title);
// })
