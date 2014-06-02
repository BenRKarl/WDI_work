var colorAPI = {
  search: function(title, callback){
    this.request(title, 's', callback);
    return this;
  },
  url: function(query, parameter){
    return 'http://www.colourlovers.com/api/colors/new?' + parameter + '=' + query;
  }, 
  request: function (query, parameter, callback){
  var callback = callback || function(data){console.log(data)};
  var url = this.url(query, parameter)
    $.ajax({
      url: 'palettes.json',
      dataType: 'json',
      success: callback
    })
    return this;
  }
}




function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){

  });
}


$(function(){
  setEventHandlers();
});


