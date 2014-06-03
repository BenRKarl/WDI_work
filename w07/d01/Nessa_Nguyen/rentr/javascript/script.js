var omdbApi = {
  search: function(title, callback) {
    title = title.replace(' ','+');
    this.request(title, 's', callback);
    return this;
  },

  lookup: function(imdbID, callback) {
    this.request(imdbID, 'i', callback);
  },

  request: function(query, param, callback) {
    callback = callback || function(data) {console.log(data)}; 
    var url = 'http://www.omdbapi.com/?' + param + '=' + query
    $.ajax({
      url: url, 
      dataType: 'json',
      success: callback
    })  
    return this;  
  }
};

var inputManager = {
  getInput: function(cssSelector) {
    var userInput = $(cssSelector);
    var query = userInput.val();
    userInput.val('');
    return query;
  }
};

function displayResults (data) {
  var results = data['Search'];
  for (var i = 0; i < results.length; i++) {
    var resultsLi = $('<li>').addClass('movie')
    var title = results[i]['Title'];
    var year = results[i]['Year'];
    var type = results[i]['Type'];
    resultsLi.html(title + ', ' + year + ', ' + type);
    resultsLi.data('imdbID', results[i]['imdbID'])
    $('.search-results').append(resultsLi);

    resultsLi.on('click', function(e) {
      var imdbID = $(e.target).data('imdbID') 
      omdbApi.lookup(imdbID, function(movieData) {
        $('.poster-image').attr('src', movieData['Poster']);
      });
    });
  };  
}

$(function () {
//  $('#submit').on('click', function(e) {
//    e.preventDefault();
//    var userInput = $('#user-input').val();
//    omdbApi.search(userInput);
//  })

  $('.movies .search').on('submit', function(e) {
    e.preventDefault();
    var query = inputManager.getInput('.movies .search input[type="text"]');
    omdbApi.search(query, displayResults);
  })  
})

