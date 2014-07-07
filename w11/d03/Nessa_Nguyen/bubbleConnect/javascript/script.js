function projectData(data) {
  var svg     = d3.select('svg');
  var circles = svg.selectAll('circle')
                      .data(data)
                      .enter()
                      .append('circle');

  var circles = svg.selectAll('circle')
                        .data(data)
                        .transition()
                         .duration(500)
                          .attr('r', function(d) {return d + 'px'})
                          .attr('cx', function() { return (Math.random()*100) + '%'})
                          .attr('cy', function() { return (Math.random()*100) + '%'})
                          .style('fill', function() {return '#'+Math.floor(Math.random()*16777215).toString(16);})
                          .style('opacity', function() {return Math.random()});
  svg.selectAll('circle').data(data)
           .exit().remove();
}

window.onload = function() {
  d3.select('svg')
    .attr('width', '100%')
    .attr('height', '75%')
    .style('border', '1px solid #000');

  setInterval(function() {
    projectData([15, 20, 20, 25, 25, 30, 30, 35, 40, 45]);
  },6000);
}
