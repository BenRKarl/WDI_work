function projectData(data){

  // Select entire campsite
  var campsite = d3.select('.campsite');

  // build tents
  var tents = campsite.selectAll('li')
                        .data(data)
                        .enter()
                        .append('li');

  // Fill tent

  var tents = campsite.selectAll('li')
                        .data(data)
                        .text(function(d){
                          return d + ' sleeps here'
                        });

    tents.exit().remove();


}