Array.prototype.sample = function() {
  var idx = Math.floor(Math.random() * this.length);
  return this[idx];
}

function projectData(data) {
  // Select entire campsite
  var svg = d3.select('svg');

  // Need new circle?
  var circles = svg.selectAll('circle')
                      .data(data)
                      .enter()
                      .append('circle');

  var circles = svg.selectAll('circle')
                      .data(data)
                      .transition()
                        .duration(200)
                          .attr('r', function(d){ return d +'px'})
                          .attr('cx', function(){return (Math.random() * 100) + '%'})
                          .attr('cy', function(){return (Math.random() * 100) + '%'})
                          .style('opacity', function() {return (Math.random() * 1)})
                          .style('fill', function() {return crayola.sample().hex})

  // Remove unneeded circles
  svg.selectAll('circle')
     .data(data)
       .exit()
       .remove();

}

window.onload = function() {
  d3.select('svg')
    .attr('width', '100%')
    .attr('height', '75%')
    .style('border', '1px solid black')

setInterval(function() {
  projectData([25, 30, 35, 40, 50, 60, 75])
}, 500)
}
