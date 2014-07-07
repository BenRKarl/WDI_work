var Router = Backbone.Router.extend({
  routes: {
    '' : 'index',
    'hello/:name': 'hello',
     'add/:x/:y' : 'add',
  'subtract/:x/:y' :'subtract',
  'multiply/:x/:y' :'multiply',
  'divide/:x/:y' :'divide'
    },
    index: function(){
      $('body').html('welcome');
    },
    hello: function(name){
      $('body').html('hello'+ name);
    },
    add: function(x,y){
      $('body').html(parseInt(x)+parseInt(y));
    },
    subtract: function(x,y){
      $('body').html(parseInt(x)- parseInt(y));
    },
    divide: function(x,y){
      $('body').html(parseInt(x) / parseInt(y));
    },
    multiply: function(x,y){
      $('body').html(parseInt(x) * parseInt(y));
    },
});

$(function(){
  var router = new Router();
  Backbone.history.start();
});