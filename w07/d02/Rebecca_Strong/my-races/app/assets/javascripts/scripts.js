console.log('On your marks, get set, js go, go, go!');



// **** model *****
function Race(id, name, location, date, time) {
  this.id = id;
  this.name;
  this.location = location;
  this.date = date;
  this.time = time;
  this.el = undefined;
}

//a Race needs to know: name, el, render

Race.prototype.render = function () {
  var newLi = $('<li>').html(this.name); //this refers to the race
  this.el = newLi; //the rendering moment when the square board rag's vision of itself becomes realised in the console - when jaja.el becomes jaja binks.
  return this;
}

//****collection/group ****//Races is a constructor function for an object of races
function Races() {
this.models = {};

};

RacesCollection.prototype.fetch = function() {
var that = this;

$.ajax({
    url: '/races',
    dataType: 'json',
    success: function(data) {
      $(data).each(function(idx, ele) {
        var newRace = new Race(ele.name, ele.location, ele.date, ele.time);
          that.models[ele.id] = newRace;
          //where 'that' refers back up to the scope of the prototype var 'that'.
          //and where new Race objects are placed into their models.
        })

      }
    })
};




  var raceCollection = new RaceCollection();
  //make the collection and

$(function(){
  raceCollection.fetch();
  //show me the models

})

$('.races').html('')
    for(idx in racesCollection.models){
      var model = racesCollection.models[idx];
      var newEle = model.render().el;
      $('.races').append(newEle);
    }

    $.ajax({
      url: '/races',
      method: 'post',
      data: {race: {name: 'Mighty Montauk'},{location: 'Montauk'},{date: 'October, 2012'},{time: '6 hours 30 mins'}}
    })

