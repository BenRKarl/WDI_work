Array.prototype.sample = function(){
  var idx = Math.floor(this.length * Math.random());
  return this[idx];
};


function projectData(data){

  // Select svg
  var svg = d3.select('svg')

  // Need new circle? If so, build them!
  var circles = svg.selectAll('circle')
                    .data(data)
                    .enter()
                    .append('circle');


  var circles = svg.selectAll('circle')
                      .data(data)
                      .transition()
                        .duration(2200)
                          .attr('r', function(d){return d+'px'})
                          .attr('cx', function() { return (Math.random()*100) + '%'})
                          .attr('cy', function() { return (Math.random()*100) + '%'})
                          .style('opacity', function(){ return Math.random() })
                          .style('fill', function(){return crayola.sample().hex});


      // remove unneeded circles
      svg.selectAll('circle')
                .data(data)
                .exit()
                .remove();

  // Fill circle
  // var tents = campsite.selectAll('li')
  //                   .data(data)
  //                   .text(function(camper){
  //                     return camper + ' sleeps here'
  //                   });

      // Empty circles?
      //tents.exit().remove();
}


window.onload = function(){
  d3.select('svg')
    .attr('width', '100%')
    .attr('height', '100%')
    .style('border', '1px solid black');

    setInterval(function(){
      projectData([5, 5, 5, 10, 10, 10, 15, 15, 15, 20, 20, 20, 25, 25, 25, 40, 40, 60, 60])
    }, 5000)

}
