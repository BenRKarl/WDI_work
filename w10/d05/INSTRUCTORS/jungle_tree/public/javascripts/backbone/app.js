var Bananapp = Bananapp || { Routers: {}, Models: {}, Collections: {}, Views: {}, };


Bananapp.initialize =  function(){

  var router = new Bananapp.Routers.MonkeyRouter({
  });

  Backbone.history.start();

}


$(function(){
  $('body').hide();
  Bananapp.initialize();
  $('body').fadeIn(1500);
});
