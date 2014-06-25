$(function(){
  $('.siteSubmit').on('click', function(){
    var siteUrl = $('.siteUrl').val()
    $.ajax({
      url: '/emails',
      method: 'post',
      dataType: 'json',
      data: {site: {site: siteUrl}},
      success: function(data){
        lichard = data
      }
    })
  })
})
