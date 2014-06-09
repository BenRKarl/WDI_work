console.log('Great Work on the delete')





//****Model *****
function Person(personJSON) {//Person lives in here only for a moment
this.name = personJSON.name;
this.email = personJSON.email;
this.id = personJSON.id;

}



//**** View *****

function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);//create new Element division w/ inner html as desired jaja
  this.el = newElement;
  return this;
}


//****Collection *****
function PeopleCollection(){//has the ability to manage a bunch of Person models & has ability to...?
  this.models = {};
}


PeopleCollection.prototype.add = function(personJSON) {
var newPerson = new Person(personJSON);
this.models[personJSON.id] = newPerson;
$(this).trigger('addFlare'); //go trigger (trigger is a jQuery thing) a flare -- see below
return this;
  }


PeopleCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
    data: {person: paramObject},
    success: function(data){
      that.add(data);
    }
  })
}



  PeopleCollection.prototype.fetch = function() {//who calls fetch? PeopleCollection.
var that = this;//therefore in this moment, 'this' is the PC FUNCTION & 'that' is the person
    $.ajax({
      url: '/people',
      dataType: 'json',
      success: function(data){                          //who calls this function? AJAX. And what is success? when you get data from the callback
        for (idx in data){                              //go thru all the index and get me a person
          // var element = data[idx]                    //and then we make it into something, here, a newPerson
          // var newPerson = new Person(element);      //but this isn't Lichard, the new Person model until we ass in the person by adding element in the ()
          // that.models[element.id] = newPerson; //commented out because we've added the above prototype models .add
          that.add(data[idx]);
        }

      }
    })
};

function clearAndDisplayPeopleList(){
$('.people').html;



  for(idx in peopleCollection.models){
    var person = peopleCollection.models[idx];
    var personView = new PersonView(person);
      $('.people').append(personView.render().el)
    }

}

var peopleCollection = new PeopleCollection();


$(function(){

  peopleCollection.fetch();//can take some time

  // setTimeout(function(){

  //   clearAndDisplayPeopleList();     //why aren't we passing this in as a callback? A: whose responsibility is to callback? And when?
  // }, 1000)

$(peopleCollection).on('addFlare', function(){     //callback must be on a jQuery $()object. The instruction is: 'hey, button, as soon as you see the 'add' flare (from above) triggered on click, go and do the following line'
  clearAndDisplayPeopleList();
})

})
