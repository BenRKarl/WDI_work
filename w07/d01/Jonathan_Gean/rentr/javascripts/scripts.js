var omdbApi = {
  request: function(query, parameter, callback){
      $.ajax({
        url: 'http://www.omdbapi.com/?' + parameter + '=' + query,
        success: callback
    })
  },
  search: function(title, callback){
    this.request(title, 's', function(data){
          movieArray = JSON.parse(data).Search
          for (var i = 0; i < movieArray.length; i++){
              newLi = $('<li>');
              newLi.html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);
              newLi.on('click', function(e){
                var imdbID = $(e.target).data('imdbID');
                omdbApi.lookup(imdbID,function(data){
                  $('.poster-image').attr('src', data.Poster);
                })
              })
              $('.search-results').append(newLi);
          };
        })
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i')
  }
}

$(function(){

    $('#movie-search-form').on('submit', function(e){
      e.preventDefault();
      var query = $('#omdb-search').val();
    omdbApi.search(query);

    })

  })
window.onload = function(){
var taskButton = document.getElementById('submit');
var userInput = document.getElementById('omdb-search');
taskButton.addEventListener('click', function(){
  omdbApi.search(userInput.value);
});
};
$(function(){
  console.log('ready')
})
