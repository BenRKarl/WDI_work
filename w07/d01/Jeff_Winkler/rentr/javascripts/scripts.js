
var omdbApi = {

  callback: function(data) {
    console.log(data);
  },

  search: function(title, callback) {
    this.request(title, 's', callback);
  },
  lookup: function(imdbID, callback) {
    this.request(imdbID, 'i', callback);
  },
  request: function(query, parameter, callback) {
    callback = callback || this.callback;
    $.ajax({
      url: 'http://www.omdbapi.com/?'+ parameter +'=' + query,
      dataType: 'json',
      success: callback
    });
    return this;
  }
}

var inputManager  = {
  getTextInput: function(movieSearchCssSelector){
  var userInput = $(movieSearchCssSelector);
  var query = userInput.val();
  userInput.val('');
  return query;
  }
}

/*
omdbApi.lookup('tt0080684', function(data){
  //var obj = $.parseJSON(data);
  var obj = data;
  //console.log(obj["Title"]);
  $('.movie-title').html(obj["Title"]);

});

omdbApi.search('happy', function(data){
  //var obj = $.parseJSON(data);
  var movies = data["Search"];
  console.log(movies);
  //$('.movie-title').html(obj["Title"]);
  var ulEl = $('.movies .list-result');
  $.each(movies, function(index, value) {
    var liEl = $('<li>');
    liEl.html(value["Title"]);
    ulEl.append(liEl);
  });

});
*/
function listIt(data){
  var movies = data["Search"];
  //console.log(movies);
  //$('.movie-title').html(obj["Title"]);
  var ulEl = $('.movies .list-result');
  $.each(movies, function(index, value) {
    var liEl = $('<li>').html(value["Title"]).addClass('film').data('imdbID', value.imdbID);
    liEl.on('click', function(e){
       var imdbID = $(e.target).data('imdbID');
       omdbApi.lookup(imdbID, function(data) {
        $('.poster-image').attr('src', data.Poster);
       });
    });
    //liEl.html(value["Title"]);
    ulEl.append(liEl);
  });
}







$(function(){
  console.log("Ready to go.");
  $('.movies .search').on('submit', function(){
    var query = inputManager.getTextInput('.movies .search input[type="text"');
    omdbApi.request(query, 's', listIt);
    return false;
  });
})


