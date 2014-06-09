// ************ Model *************
function Race(raceJSON){
  this.name = raceJSON.name;
  this.location = raceJSON.location;
  this.race_date = raceJSON.race_date;
  this.finish_time = raceJSON.finish_time;
  this.id = raceJSON.id;
}



// ************ View *************
function RaceView(model){
  this.model = model;
  this.el = undefined;
}

RaceView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this;
};



// ************ Collection *************
function RacesCollection(){
  this.models = {};
}

RacesCollection.prototype.add = function(raceJSON){
  var newRace = new Race(raceJSON);
  this.models[raceJSON.id] = newRace;
  $(this).trigger('addFlare');
  return this;
}

PeopleCollection.prototype.create = function(paramObject){
  var that = this;
   $.ajax({
    url: '/races',
    method: 'post',
    dataType: 'json',
    data: {race: paramObject},
    success: function(data){
      that.add(data);
    }
   })
}

RacesCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/races',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
};





function refreshRacesList(){

  $('.races').html('');

  for(idx in racesCollection.models){
    var race = racesCollection.models[idx];
    var raceView = new RaceView(person);
    $('.races').append(raceView.render().el);
  }
}

var racesCollection = new RacesCollection();

$(function(){

  racesCollection.fetch();

  // If you see the 'addFlare' shot in the sky!!!!
  $(racesCollection).on('addFlare', function(){
    refreshRacesList();
  });


  $('.name-form').on('submit', function(e){
    e.preventDefault();
    var newName = $('.name-form input[name="name"]').val();
    $('.name-form input[name="name"]').val('');
    racesCollection.create({name: newName});
  })

})
