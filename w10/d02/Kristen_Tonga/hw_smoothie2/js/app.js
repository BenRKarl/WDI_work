// **** PAGE LOAD ****
$(function(){
  console.log("sigh and let go... ")
  var rad = new Juice({name: 'Rad Rool'});
  var radView = new JuiceView({model: rad});
  $('.juice-test').append(radView.render().el);


})
