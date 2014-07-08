$(function(){
  console.log("this works");
  $('body').html('loading...')
  $.ajax({
    url: '/planets',
    method:'get',
    dataType:'json',
    success: function(data){
      console.log(data);
    }
  })
})