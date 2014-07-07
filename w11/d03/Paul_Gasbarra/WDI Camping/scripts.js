function projectData(data){

  //Select Entire Campsite
  var campsite = d3.select('.campsite');

  //Need new tents? If so ... build them!
  var tents = campsite.selectAll('li')
    .data(data)
    .enter()
    .append('li');

  //Fill the tents!
  var tents = campsite.selectAll('li')
    .data(data) //tells projector what data I'm projecting
    .text(function(d){
      return d + ' sleeps here'
    });

    tents.exit().remove();
}
