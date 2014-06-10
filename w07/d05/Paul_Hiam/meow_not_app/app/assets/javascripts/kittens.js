//model
function Kitten(url){
  this.url = url;
  
}

Kitten.prototype.create = function(paramObject){
  var that = this;
   $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data){
      console.log(data);
    }
    
   })
}


function getKitten(){
  
}





$(function(){
  
  $('#meowit').click(function(){
    Kittencollection.add();
  });
})
