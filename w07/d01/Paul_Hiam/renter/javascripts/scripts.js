var omdbApi = {
  search: function(name, callback){
    this.request(name, 's', callback);
    return this; //allows method chaining (in future)

    // $.ajax({
    //   url: 'http://www.omdbapi.com/?s=' + title,
    //   success: function(data){
    //     console.log(data)
    //   }
    // })
  },
  find: function(title, callback){
    this.request(title, 't', callback);
    return this; //allows method chaining (in future)
    // make this whole function: this.request(title, 's', callback)
    // $.ajax({
    //   url: 'http://www.omdbapi.com/?t=' + title,
    //   success: function(data){
    //     console.log(data)
    //     //success: callback  -eval the callback function*
    //   }
    // })
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
    return this; //allows method chaining (in future)
    // $.ajax({
    //   url: 'http://www.omdbapi.com/?i=' + imdbID,
    //   success: function(data){
    //     console.log(data)
    //   }
    // })
    //
  },
  webUrl: function(query, parameter){
    return 'http://www.omdbapi.com/?' + parameter + '=' + query;
},
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    var url1 = this.webUrl(query, parameter)
    $.ajax({
      url: url1,
      dataType: 'json',
      success: callback
      // success: function(data){
      //   console.log(data)}
    })
  }
}

var inputManager = {
  getTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text
  }
};

function updatePoster(movieData){
  $('.poster-image').attr('src', movieData.Poster);
}

//this is a document.ready (jquery)
$(function(){
 
  $('#movie-search').on('submit', function(e){
     e.preventDefault();
     var query = inputManager.getTextInput('#searchBar')
    //var query = $('#searchBar').val();

   omdbApi.request(query, 's', function(data){
    var movieArray = data.Search;
    //$(movieArray).each(function(idx, movie){})
    for (var i = 0; i < movieArray.length; i++){
      var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);

      movieLi.on('click', function(e){
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster)
    })
      
      $('.search-results').append(movieLi);
    };

   })
  })
})
//
// $(function(){
//   console.log('Go..BWAH')
// })
// omdbApi.request('happy', 's', function(data){
//   back = data;
// })
