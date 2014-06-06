console.log('Test of scripts.js file in assets pipeline');


// ***** Model *****
function Juice(juiceJSON){
  this.name       = juiceJSON.name;
  this.flavor     = juiceJSON.flavor;
  this.rating     = juiceJSON.rating;
  this.sizes      = juiceJSON.sizes;
  this.niclevels  = juiceJSON.niclevels;
  this.recommend  = juiceJSON.recommend;
  this.id         = juiceJSON.id;
}

// ***** View *****
function JuiceView(model){
  this.model  = model;
  this.el     = undefined;
}

JuiceView.prototype.render = function(){
  var newLi = $('<li>').html(this.model.name);
  this.el   = newLi;
  return this;
};

// ***** Collection *****
function JuicesCollection(){
  this.models = {};
};

JuicesCollection.prototype.add = function(juiceJSON){
  var newJuice = new Juice(juiceJSON);
  this.models[juiceJSON.id] = newJuice;
  $(this).trigger('addFlare');
  return this;
}

JuicesCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/juices',
    method: 'post',
    dataType: 'json',
    data: {juice: paramObject},
    success: function(data){
      that.add(data);
    }
  })
}

JuicesCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/juices',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
};

function clearAndDisplayJuicesList(){

  $('.juices').html('');

  for(idx in juicesCollection.models){
    var juice = juicesCollection.models[idx];
    var juiceView = new JuiceView(juice);
    $('.juices').append(juiceView.render().el);
  }
}

var juicesCollection = new JuicesCollection();

$(function(){

  juicesCollection.fetch();

  $(juicesCollection).on('addFlare', function(){
    clearAndDisplayJuicesList();
  })
})

