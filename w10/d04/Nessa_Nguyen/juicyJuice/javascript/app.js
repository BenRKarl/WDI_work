var Router = Backbone.Router.extend({
  initialize: function() {
    this.$body = $('body');
  }
  routes: {
    ''            : 'index',
    'juice/:name' : 'juice',
    'add/:x/:y'   : 'add',
    'subtract/:x/:y': 'subtract',
    'multiply/:x/:y': 'multiply',
    'divide/:x/:y': 'divide',
  },
  index: function() {
    $('.wrapper').append('Welcome to the Juice Shack');
  },
  juice: function(name) {
    $('.wrapper').prepend('Juice of the day is '+name);
  },
  add: function(x,y) {
    var result = parseInt(x) + parseInt(y);
    $('.container').html('The answer is: '+result)
  },
  subtract: function(x,y) {
    var result = parseInt(x) - parseInt(y);
    $('.container').html('The answer is: '+result)
  },
  multiply: function(x,y) {
    var result = parseInt(x) * parseInt(y);
    $('.container').html('The answer is: '+result)
  },
  divide: function(x,y) {
    var result = parseInt(x) / parseInt(y);
    $('.container').html('The answer is: '+result)
  }
})

$(document).ready(function() {
  var router = new Router();
  Backbone.history.start();
});
