//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  var newFeed = new Feed();
  newFeed.fetch();
})

function Tweet(handle, content, url){
  this.handle  = handle;
  this.content = content;
  this.url     = url;
  this.el      = undefined;
}

Tweet.prototype.render = function(){
  var newLi = $('<li>').html(this.handle+': '+this.content+'<br/>'+this.url)
  this.el = newLi;
  return this;
}

function Feed(){
  this.models = {};
}

Feed.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/tweets',
    dataType: 'json',
    success: function(data){
    for (var i = 0; i < data.length; i++){
      var newTweet = new Tweet(data[i].handle, data[i].content, data[i].url);
      that.models[i] = newTweet; 
    }
  }})
};
