

$(function() {

  $('#url_button').on('click', function() {
    sendUrl();
  });
});


function sendUrl() {
  var url = $('#url_input').val();
  console.log(url);
  $.ajax({
    url: '/emails/find',
    dataType: 'json',
    data: {url: url},
    success: function(data) {
      console.log(data);
    }
  });

}
