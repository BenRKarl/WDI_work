
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(
    pullPalette()
  );
}

function apiCall(){
  $.ajax({
    url: '/palettes.json',
    success: function(data){
      console.log(data);
    }
  })
}

function pullPalette(){
$('.random-palettes').on('click', apiCall)
}

$(function(){
  setEventHandlers();
});
