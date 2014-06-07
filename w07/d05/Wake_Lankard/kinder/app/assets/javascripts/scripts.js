function fetchKitten(){
  $.ajax({
    url: '/kittens/random',
    dataType: 'json',
    success: function(data){
      showKitten(data.url);
    }
  })  
};

function showKitten(url){
  $('.kitten').html('');
  var kittenElem = $('<img>').attr('src',url).addClass('theKitten');
  $('.kitten').append(kittenElem);
};

function saveKitten(imageUrl){
  $.ajax({
    url:'/kittens/create',
    method: 'POST',
    dataType: 'json',
    data: {url: imageUrl },
    success: function(){
      fetchKitten()
    }
  })
};

$(function(){
  fetchKitten();
  var url = $('.theKitten').attr('src');
debugger;
  $('.meowBtn').click(function(url){
    saveKitten(url);
  });
  $('.notMeowBtn').click(function(){
    fetchKitten()
  })
})