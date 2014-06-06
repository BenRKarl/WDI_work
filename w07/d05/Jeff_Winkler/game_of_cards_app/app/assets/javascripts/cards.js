
function ajaxIt() {
  $.ajax({
    url: '/',
    dataType: 'json',
    success: function(data){
      displayCards(data);
    }
  });
}

function displayCards(data){
  console.log(data[0]);
  var $allCardsDiv = $('#all-cards')
  $.each(data, function(index, card) {
    var $newCardDiv = $('<div>', {class: "card-div"});
    $newCardDiv.text(card.name + ' of '+card.suit);
    $allCardsDiv.append($newCardDiv);
  });

}

$(function(){
  $('#get-cards-button').on('click', ajaxIt);
});
