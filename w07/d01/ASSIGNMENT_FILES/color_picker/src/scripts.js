function getPalettes(e){
  $.ajax({
    url: 'http://www.colourlovers.com/api/palettes/new?format=json',
    success: function(data){
      console.log(data);
    }
  })
}

function setEventHandlers(){
  console.log('this is really happeneding');
  var button = $('.random-palettes')[0];
  $(button).click(getPalettes);


}

$(function(){
  setEventHandlers();
});