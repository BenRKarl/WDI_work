var omdbApi = {

  search: function(title, callback){
    this.request(title, 's', callback);
    return this;
    
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);

    return this;
    
  
  },
  request: function(query, parameter,callback){
    callback = callback || function(data){console.log(data)};
    // callback = function(data){ display.displayMovies(data)} ;
     results = $.ajax({
       url: 'http://www.omdbapi.com/?' + parameter + '=' + query,
       dataType: 'json',
       success: callback
     
      
    })
     
     return this;
  },

  
}

var inputManager = {
  takeTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};
  function updatePoster(movieData){
    $('.poster-image').attr('src',movieData.Poster);
  }

  function displayMovies(data){
    var movieArray = data.Search;
    for (var i = 0; i < movieArray.length; ++i){
      var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

      //movieLi.on('click', function(){console.log("click")});

       movieLi.on('click', function(e){
         var imdbID = $(e.target).data('imdbID');
         omdbApi.lookup(imdbID,updatePoster)
       })
      $('.results-section').append(movieLi);
    }

  
};




$(function(){
 // $('#userInputForm').on('submit', function(e){
 //    e.preventDefault();
 //    var userInput = $('#userInputField').val();
 //    omdbApi.search(userInput);
    
 $('.movies .search').on('submit', function(e){
    e.preventDefault();
    var userInput = inputManager.takeTextInput('.movies .search input[name="movie-search"]')
    omdbApi.search(userInput, displayMovies);   
    //return false;
  });
  console.log('ready to go');
})

     
     


