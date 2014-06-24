$(function() {

  $('.site-search').submit(function(e) {
    e.preventDefault();
    var site = $('.site-name').val();
    $.ajax({
      url: '/emails?url='+site,
      dataType: 'json',
      success: function(data) {
        console.log(data);
      }
    })
  })

})
