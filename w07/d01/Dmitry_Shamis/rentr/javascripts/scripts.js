var omdbApi = {
  search: function(title, callback) {
    this.request(title, 's', callback);
    return this;
  },

  lookup: function(imdbID, callback) {
    this.request(imdbID, 'i', callback);
    return this;
  },

  request: function(query, parameter, callback) {
    var callback = callback || function(data){console.log(data)};
    $.ajax({
      url: 'http://www.omdbapi.com/?' + parameter + '=' + query,
      success: callback
    })
    return this;
  }
}

$(function () {
  $('.search-submit').on('click', function(e) {
    var searchTerm = $('.search-term');
    e.preventDefault();
    omdbApi.search(searchTerm.val());
  })
})

$(function() {
  console.log('Ready to go')
})
