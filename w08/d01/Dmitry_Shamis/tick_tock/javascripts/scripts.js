console.log("Tick Tock")

$(function(){

  var time = new Date();
  var seconds = time.getSeconds();
  var minutes = time.getMinutes();
  var hours = time.getHours();
  $('.second').css('-webkit-transform', 'rotate('+seconds*6+'deg)');
  $('.minute').css('-webkit-transform', 'rotate('+minutes*6+'deg)');
  $('.hour').css('-webkit-transform', 'rotate('+hours*30+'deg)');

  setInterval(function () {
    var seconds = new Date().getSeconds();
    $('.second').css('-webkit-transform', 'rotate('+seconds*6+'deg)');
  }, 1000)

  setInterval(function () {
    var minutes = new Date().getMinutes();
    $('.minute').css('-webkit-transform', 'rotate('+minutes*6+'deg)');
  }, 60000)

  setInterval(function () {
    var hours = new Date().getHours();
    $('.hour').css('-webkit-transform', 'rotate('+hours*30+'deg)');
  }, 360000)

})
