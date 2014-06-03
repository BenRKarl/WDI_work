

var omdbApi = {
   search: function(title, callback){
      this.request('s', title, callback);
      return this;
   },
   lookup: function(imdbID, callback){
      this.request('i', imdbID, callback);
      return this;
   },
   url: function(query, parameter){
      return 'http://www.omdbapi.com/?' + parameter + '=' + query;
   },
   request: function(parameter, query, callback){
      var callback = callback || function(data){console.log(data)};
      var url = this.url(query,parameter);
      $.ajax({
         url: url,
         dataType: 'json',
         success: callback
      });
      return this;
   }
}



var inputManager = {
   takeTextInput: function(textCssSelector) {
      var userInput = $(textCssSelector);
      var text = userInput.val();
      userInput.val('');
      return text;
   }
}



function updatePoster(movieData){
   $('.poster-image').attr('src', movieData.Poster);
}



function displayResults(data){
   var movieArr = data.Search;
   $('.search-results').html('');
   $('.poster-image').attr('src','');
   for (i in movieArr){
      var liEl = $('<li>').html(movieArr[i].Title).addClass('film').data('imdbID', movieArr[i].imdbID);

      liEl.click(function(e){
         var imdbID = $(e.target).data('imdbID');
         omdbApi.lookup(imdbID, updatePoster); 
      })

      $('.search-results').append(liEl);
   };

}



$(function(){

   $('.movies .search').submit(function(e){
      e.preventDefault();
      var query = inputManager.takeTextInput('.movies .search input[name="movie-search"]');
      omdbApi.search(query, displayResults);
   })

});








