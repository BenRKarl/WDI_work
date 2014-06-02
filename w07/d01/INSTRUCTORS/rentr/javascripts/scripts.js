
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
      return  'http://www.omdbapi.com/?' + parameter + '=' + query;
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

// omdbApi.search('star wars', function(data){console.log(data)})
// omdbApi.search('star wars')




var inputManager = {
  takeTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};



$(function(){

  $('.movies .search').on('submit', function(e){
    e.preventDefault();
    var query = inputManager.takeTextInput('.movies .search input[name="movie-search"]')
    omdbApi.search(query);
  })

})

