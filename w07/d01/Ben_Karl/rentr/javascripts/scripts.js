var omdbApi = {
  search: function(title, callback){
   this.request(title, 's', callback);
  },

  lookup: function(imdbId, callback){
    this.request(imdbId, 'i', callback);
  },

  request: function(query, parameter, callback){
    var callback = callback || function(data){
     console.log(data);
     display(data);
    };
    var url = "http://www.omdbapi.com/?";
    var qString = parameter + "=";
    var searchQuery = query.replace(" ", "+");
    var searchUrl = url + qString + searchQuery;
    $.ajax({
        url: searchUrl,
        dataType: 'json',
        success: callback
    })
  }
};

var inputManager = {
  getTextInput: function(movieSearchCssSelector){
    var userInput = $(movieSearchCssSelector);
    var query = userInput.val();
    userInput.val("");
    return query;
  }
}

function display(data){
   var resultsUl = $('.search-results');
   for (var i = 0; i < data.Search.length; i++){
     var liEl = $('<li>');
     liEl.html(data.Search[i].Title).addClass('film').data('imdbID', data.Search[i].imdbID);

     liEl.on('click', function(e){
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, function(data){
        $('.poster-image').attr('src', data.Poster);
      });
     })

    resultsUl.append(liEl);
  }
}

$(function(){
  console.log('ready to go');
  $('.input-form').on('submit', function(e){
    e.preventDefault();
    var userInput = inputManager.getTextInput($('.input-field'));
    omdbApi.search(userInput);
  })
})

// omdbApi.search('happy gilmore', function(data){
//   movies = data;
// })


