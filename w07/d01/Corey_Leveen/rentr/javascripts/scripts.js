

var omdbApi = {
  search: function(title, callback){
    this.request(title, 's', callback);
  },
  lookup: function(omdbID, callback){
    this.request(omdbID, 'i', callback);
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    $.ajax({
      url: 'http://omdbapi.com/?i=' + parameter + '=' + query,
      success: callback
    })
  }
}


//omdbApi.search('star wars', function(data){console.log(data)})
//omdbApi.search('star wars')

$(function(){
  console.log('Ready to go')
})
