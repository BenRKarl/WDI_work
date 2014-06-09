


$(function(){

  console.log("this works");
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        cardElem = $("<div>").html(data[idx]);
        $(cardElem).append(data[idx].name + " of "+ data[idx].suit);
        $('.cards').append(cardElem);
      }

    }
  })

})