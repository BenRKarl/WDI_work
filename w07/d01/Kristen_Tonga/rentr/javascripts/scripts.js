$(function(){
  console.log('Ready to go?');
});


var omdbApi = {
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    console.log('http://www.omdbapi.com/?'+ parameter + '=' + query)
    $.ajax({
      url: 'http://www.omdbapi.com/?'+ parameter + '=' + query ,
      dataType: 'json',
      success: callback,
    });
    return this;
  },

  search: function(title, callback){
    this.request(title, 's', callback);
    return this;
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
    return this;
  },
};

// Clears Input Box after Submission
var inputManager = {
  takeTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};

// Puts titles into list
// function makesList(data){
//   data.Search.forEach(function(item, index){
//     var li = $("<li type='movie'>").html( item.Title );
//     $( ".search-results" ).append(li)
//   });
// }

//Displays poster
function updatePoster(movieData){
  $('.poster-image').attr('src', movieData.Poster);
}

function displaySearchResults(data){
  var movieArray = data.Search;
  for (var i = 0; i < movieArray.length; i++) {
    var movieLi = $('<li>').html(movieArray[i].Title).addClass('file').data('imdbID', movieArray[i].imdbID);

    movieLi.on('click', function(e){
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster)
    })

    $('.search-results').append(movieLi);
  };
}

// Gets info from forms
$(function(){
  $('#search-form').on('submit', function(e){
    e.preventDefault();
    var query = $('#title').val();
    omdbApi.search(query, displaySearchResults);
  })
  $('.searches .lookup-form').on('submit', function(e){
    e.preventDefault();
    // var userInput = $(this).find(input[placeholder="Omdb ID?"]');
    var userInput = $('.searches .lookup-form input');
    var query = userInput.val();
    omdbApi.lookup(query, displaySearchResults);
  })
  $('.searches .request-form').on('submit', function(e){
    e.preventDefault();
    var userInputA = $('.searches .request-form input[class="query"]');
    var userInputB = $('.searches .request-form input[class="parameter"]');
    var query = userInputA.val();
    var parameter = userInputB.val();
    omdbApi.request(query, parameter, displaySearchResults);
  })
})








// var happyGilmoreID = 'tt0116483';
omdbApi.lookup('tt0116483', function(data){
  $('.searches-header').html(data.Title);
  //debugger; //console needs it to be open to work
})

// omdbApi.search('Happy', function(data){
//   $('.search-results').
// })

  // request: function(query, parameter, callback){
  //   if parameter == 's'
  //     this.request(title, 's', callback);
  //     $.ajax({
  //       callback = callback || function(data){console.log(data)};
  //       url: 'http://www.omdbapi.com/?s='+ title ,
  //     success: callback;
  //     })
  //   else if parameter == 'i'
  //     this.request(imdbID, 'i', callback)
  //       $.ajax({
  //     url: 'http://www.omdbapi.com/?i=' + imdbID ,
  //     success: function(data){
  //       console.log(data);
  //     };
  //   });
  // };

