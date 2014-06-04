
var omdbApi = {
  search: function(title, callback) {
    // $.ajax({
    //   url: ('http://www.omdbapi.com/?s=' + title),
    //   success: callback
    //   })
    this.request(title, 's', callback);
    return this;
  },

  lookup: function(imdbID, callback) {
    // $.ajax({
    //   url: ('http://www.omdbapi.com/?i=' + imdbID),
    //   success: callback
    //   })
    this.request(imdbID, 'i', callback);
    return this;
  },

  request: function(query, parameter, callback){
     callback = callback || function(data){console.log(data)};
     $.ajax({
      url: ('http://www.omdbapi.com/?' + parameter + '='  + query),
      dataType: 'json',
      success: callback
      })
    return this;
  }
}

var inputManager = {
  getTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};

function updatePoster(movieData){
 $('.poster-image').attr('src', movieData.Poster)
}

function displaySearchResults(data){
  $('.searchResults').html('')
  for (var i = 0 ; i < data.Search.length; i++) {

    var movieLi = $('<li>').html(data.Search[i].Title).addClass('film').data('imdbID', data.Search[i].imdbID)

    movieLi.on('click', function(e){
      console.log( $(e.target).data('imdbID'))
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster);
    })

    $('.searchResults').append(movieLi)
  };
}

$(function(){
  console.log('Ready to go')
  $('#movieForm').on('submit', function(event){
    event.preventDefault();
    var query = inputManager.getTextInput('#movieInput')
    omdbApi.search(query, displaySearchResults)
  })
})


// $(function(){
//   console.log('Ready to go')
//   $('#movieForm').on('submit', function(event){
//     event.preventDefault();
//     omdbApi.search($('#movieInput').val());
//   })
// })


// omdbApi.lookup("tt0242653", function(data){
//   console.log(data.Title)
//   $('.header-title').html(data.Title)
// })

// omdbApi.search("Matrix", function(data){
//   for (var i = 0 ; i < data.Search.length; i++) {
//   $('.searchResults').append($('<li>').html(data.Search[i].Title))
//   }
// })

