function Kitten(){
  this.url = undefined;
}

Kitten.prototype.fetchKitten = function(){
  $.ajax({
    url: '/kittens/random',
    dataType: 'json',
    success: function(data){
      kitten.url = data.url;
      kitten.showKitten();
      $(this).trigger('gotKitten');
    }
  })  
};

Kitten.prototype.showKitten = function(){
  $('.kitten').html('');
  var kittenElem = $('<img>').attr('src',this.url).addClass('theKitten').draggable();
  $('.kitten').append(kittenElem);
};

Kitten.prototype.saveKitten= function(){
  $that = this;
  $.ajax({
    url:'/kittens',
    method: 'POST',
    dataType: 'json',
    data: {kitten: {url: this.url} },
    success: function(){
      $that.fetchKitten()
    }
  })
};

var kitten = new Kitten()

$(function(){
  $that = this;
  kitten.fetchKitten();

  $('.meow').droppable({
    drop: function(e, dropped){
      var kat = $(dropped.draggable);
      debugger;
     // $(dropped).saveKitten();
    }
  })

  $('.meowBtn').click(function(){
    kitten.saveKitten();
  });
  $('.notMeowBtn').click(function(){
    kitten.fetchKitten()
  })
})