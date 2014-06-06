console.log ('Great Work')


function Person(){
}

function PeopleCollection(){
}

PeopleCollection.prototype.fetch = function(){

  $.ajax({
    url: '/people',
    dataType: 'json'
    success: function(data){
      console.log(data)

    }
  })
};


var peopleCollection = new PeopleCollection();