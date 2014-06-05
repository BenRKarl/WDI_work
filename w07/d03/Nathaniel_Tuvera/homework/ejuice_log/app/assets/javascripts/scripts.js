console.log('Test of scripts.js file in assets pipeline');

function Juice(id, name, flavor, rating, sizes, niclevels, recommend){
  this.id         = id;
  this.name       = name;
  this.flavor     = flavor;
  this.rating     = rating;
  this.sizes      = sizes;
  this.niclevels  = niclevels;
  this.recommend  = recommend;
  this.el         = undefined;
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
      $(data).each(function(idx,ele){
        var newJuice = new Juice(ele.id, ele.name, ele.flavor,
          ele.rating, ele.sizes, ele.niclevels, ele.reccomend);
        that.models[ele.id] = newJuice;
      })
    }
  })
};

$(function(){

  var juicesCollection = new JuicesCollection();
  juicesCollection.fetch();

  for (idx in juicesCollection.models){
    var model = JuicesCollection.modex[idx];
    var newEle= mode.render().el;
    $('.juices').append(newEle);
  }
})

dangerZone = new Juice({name: 'Danger Zone', flavor: 'Savory', rating: 4, sizes: '10, 30, 50', niclevels: '0-32, increments of 2', recommend: true})
