


function projectData(data){


  //select entire campsite ul class 'campsite'
  var campsite = d3.select('.campsite');

  //need new tents? if so, build them!
  var tents = d3Body.selectAll('li') //in the campsite, select all tents(li's) and tell me how many there are
                    .data(data) //this is the data to project onto campground
                    .enter() //the difference - how many tents(li) do i need? to reflect data accordingly
                    .append('li'); //append the amount of tents to match the data

  //Fill tents
  var tents = campsite.selectAll('li') //go get the campsite, find out how many li's are existing
                      .data(data) //data to project onto campground
                      .text(function(camper){ // inserts text of a camper manipulate each one of the tents
                        return camper + 'sleeps here' //camper name sleeps here
                      })

  //if there are any empty tents? remove them!! opposite of .enter
  tents.exit().remove();

}
