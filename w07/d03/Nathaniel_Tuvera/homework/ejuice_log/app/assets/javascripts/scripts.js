console.log('Test of scripts.js file in assets pipeline');

function Juice(juiceJSON){
  this.id         = juiceJSON.id;
  this.name       = juiceJSON.name;
  this.flavor     = juiceJSON.flavor;
  this.rating     = juiceJSON.rating;
  this.sizes      = juiceJSON.sizes;
  this.niclevels  = juiceJSON.niclevels;
  this.recommend  = juiceJSON.recommend;
  this.el         = juiceJSON.undefined;
}

Juice.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el   = newLi;
  return this;
}


function JuicesCollection(){
  this.models = {};
};

JuicesCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/juices',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        var element = data[idx];
        var newJuice = new Juice(element);;
        that.models[element.id] = newJuice;
      }
    }
  })
};

$(function(){

  var juicesCollection = new JuicesCollection();
  juicesCollection.fetch();

  for (idx in juicesCollection.models){
    var model = JuicesCollection.modex[idx];
    var newEle= mode.render().el;
    // $('.juices').append(newEle);
  }
})

varr dangerZone = new Juice({name: 'Danger Zone', flavor: 'Savory', rating: 4, sizes: '10, 30, 50', niclevels: '0-32, increments of 2', recommend: true})
