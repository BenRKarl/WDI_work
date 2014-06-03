
// omdbApi is a Library containing definitions for functions that can be 
// called by keys

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
      return  'http://www.omdbapi.com/?' + parameter + '=' + query;
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){
                                console.log(data);                                
                                };
    var url = this.url(query, parameter)
    $.ajax({
      url: url,
      dataType: 'json',
      success: callback
    })
    return this;
  }
}


// global / general input manager outside Library and isready-function

var inputManager = {
  getTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};

 //  <div>
 //    <ul class="search-results" data-name='...'>
 //    </ul>
 //  </div>
 // data-name is a hidden piece that takes in the info of the imdbID
 // .... addClass('film').data('imdbID', movieArray[i].imdbID);

 function updatePoster(movieData){
   $('.poster-image').attr('src', movieData.Poster);
 }

function displaySearchResults(data){

  var movieArray = data.Search;
      for (var i = 0; i < movieArray.length; i++){
    
    var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

    movieLi.on('click', function(e){  // e is event that was called by the target,  e.target == li
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster); // instead of the following 2 lines, the setting of img is separated
      // omdbApi.lookup(imdbID, function(movieData){
      //   $('.poster-image').attr('src', movieData.Poster);
      })
    });
    $('.search-results').append(movieLi);
  };
} 

// isready-function

$(function(){
 // $('.movies .search').on('submit', function(e){
  
   $('.movies .search').submit(function(e){ // e = event object of the form / e.target contains info about the object that iniated the event, here submit
    e.preventDefault(); 
    var query = inputManager.getTextInput('.movies .search input[name="movie-search"]');
    omdbApi.search(query, displaySearchResults);
    // omdbApi.search(query, function(data){
    //   var movieArray = data.Search;
    //   for (var i = 0; i < movieArray.length; i++){
    //     console.log(movieArray[i].Title);
    //     var movieLi = $('<li>').html(movieArray[i].Title).addClass('film');
    //     $('.search-results').append(movieLi);
    //   };
    // });   
  });
})

/////////////////////////////////////// just some additional stuff //////////////////////////////////////////////
// http://www.imdb.com/title/tt0431420/
// var stone cold id = tt0431420

omdbApi.lookup('tt0431420', function(data){
  console.log(data.Title);
  console.log(data.Plot);
  $('.header-title').html(data.Title);

  // testing is a GLOBAL variable, needed to have access to it in the javascript console
  //testing = data;

  // THIS STARTS THE JAVASCRIPT DEBUGGER, BUT ONLY IF THE JAVASCRIPT CONSOLE IS OPEN IN CHROME !!!!
  // debugger;
})

// omdbApi.lookup('tt0431420');


